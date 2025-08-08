rpc.exports = {
    init: function (analysisInput) {
        console.log('[*] Static analysis agent init called');
        console.log('[*] Received analysis input');

        Java.perform(function () {
            console.log('[*] Java.perform started');

            let apiCallCount = 0;
            let matchedApiCallCount = 0;
            let patternMatchCounts = {};

            // Extract methods from static analysis result
            let methodsToHook = [];

            try {
                // Expect a parsed JSON object (keep KISS: no file I/O in Frida JS)
                const analysisResult = analysisInput;

                console.log('[*] Loaded static analysis result');
                if (analysisResult.apkPath) {
                    console.log('[*] APK Path: ' + analysisResult.apkPath);
                }
                if (analysisResult.totalPatterns) {
                    console.log('[*] Total Patterns: ' + analysisResult.totalPatterns);
                }

                if (analysisResult.detailedMethods) {
                    console.log('[*] Processing detailed methods...');

                    // 初始化状态统计
                    Object.keys(analysisResult.detailedMethods).forEach(stateName => {
                        patternMatchCounts[stateName] = 0;
                    });

                    // Collect all methods to hook
                    Object.keys(analysisResult.detailedMethods).forEach(stateName => {
                        const methods = analysisResult.detailedMethods[stateName];
                        methods.forEach(methodInfo => {
                            methodsToHook.push({
                                stateName: stateName,
                                className: methodInfo.className,
                                methodName: methodInfo.methodName,
                                fullSignature: methodInfo.fullSignature
                            });
                        });
                    });

                    console.log(`[*] Found ${methodsToHook.length} methods to hook from static analysis`);
                } else {
                    console.log('[*] No detailed methods found, using matches...');

                    if (analysisResult.matches) {
                        Object.keys(analysisResult.matches).forEach(stateName => {
                            patternMatchCounts[stateName] = 0;
                            const methods = analysisResult.matches[stateName];
                            methods.forEach(method => {
                                const parts = method.split('.');
                                if (parts.length >= 2) {
                                    const methodName = parts[parts.length - 1];
                                    const className = method.substring(0, method.lastIndexOf('.'));
                                    methodsToHook.push({
                                        stateName: stateName,
                                        className: className,
                                        methodName: methodName,
                                        fullSignature: method
                                    });
                                }
                            });
                        });
                    }
                }

                console.log('[*] Starting static analysis based API monitoring...');

                // Create hooks for each method (hook ALL overloads)
                methodsToHook.forEach(methodInfo => {
                    try {
                        const targetClass = Java.use(methodInfo.className);
                        const method = targetClass[methodInfo.methodName];
                        if (!method || !method.overloads || method.overloads.length === 0) {
                            console.log(`[WARNING] No overloads found for ${methodInfo.className}.${methodInfo.methodName}`);
                            return;
                        }
                        console.log(`[+] Hooking: ${methodInfo.className}.${methodInfo.methodName} (all overloads: ${method.overloads.length})`);

                        method.overloads.forEach(function (ovl) {
                            const sig = `${methodInfo.className}.${methodInfo.methodName}(${ovl.argumentTypes.map(t => t.className || t.name).join(', ')})`;
                            try {
                                ovl.implementation = function () {
                                    apiCallCount++;
                                    matchedApiCallCount++;
                                    patternMatchCounts[methodInfo.stateName]++;

                                    try {
                                        const result = ovl.apply(this, arguments);

                                        console.log(`[API] ${sig} (State: ${methodInfo.stateName})`);

                                        send({
                                            type: 'api_call',
                                            timestamp: Date.now(),
                                            state: methodInfo.stateName,
                                            class: methodInfo.className,
                                            method: methodInfo.methodName,
                                            fullSignature: sig,
                                            args: Array.from(arguments).map(String),
                                            result: String(result),
                                            callId: apiCallCount
                                        });

                                        return result;
                                    } catch (e) {
                                        console.log(`[ERROR] In ${sig}: ${e.message}`);
                                        return ovl.apply(this, arguments);
                                    }
                                };
                            } catch (err) {
                                console.log(`[WARNING] Failed to hook overload ${sig}: ${err.message}`);
                            }
                        });

                    } catch (e) {
                        console.log(`[WARNING] Failed to hook ${methodInfo.fullSignature}: ${e.message}`);
                    }
                });

                // Send final statistics
                send({
                    type: 'statistics',
                    timestamp: Date.now(),
                    apiCallCount: apiCallCount,
                    matchedApiCallCount: matchedApiCallCount,
                    patternMatchCounts: patternMatchCounts,
                    totalMethods: methodsToHook.length
                });

                console.log('[+] Static analysis based hooking completed');
                console.log('[+] STATIC_ANALYSIS_HOOKING_COMPLETE');

                // Periodic stats
                setInterval(function () {
                    try {
                        send({
                            type: 'periodic_stats',
                            timestamp: Date.now(),
                            apiCallCount: apiCallCount,
                            matchedApiCallCount: matchedApiCallCount,
                            patternMatchCounts: patternMatchCounts
                        });
                    } catch (e) {
                        console.log(`[ERROR] Failed to send periodic stats: ${e.message}`);
                    }
                }, 30000);

            } catch (e) {
                console.log('[ERROR] Failed to use static analysis result: ' + e.message);
                send({
                    type: 'error',
                    timestamp: Date.now(),
                    error: e.message
                });
            }
        });
    },

    getstats: function () {
        return {
            status: 'active',
            timestamp: Date.now()
        };
    }
}; 