rpc.exports = {
    init: function (patterns) {
        console.log('[*] Smart agent init called');

        Java.perform(function () {
            console.log('[*] Java.perform started');

            let apiCallCount = 0;
            let matchedApiCallCount = 0;
            let patternMatchCounts = {};

            // Initialize pattern match counts
            Object.keys(patterns).forEach(patternName => {
                patternMatchCounts[patternName] = 0;
            });

            // Pre-compile login-related patterns for fast filtering
            let loginPatterns = [
                /login/i, /auth/i, /token/i, /credential/i, /password/i, /username/i,
                /signin/i, /authenticate/i, /validate/i, /verify/i, /submit/i,
                /session/i, /account/i, /user/i, /mfa/i, /otp/i, /2fa/i
            ];

            try {
                console.log('[*] Starting smart API monitoring...');

                // Layer 1: Network-related classes (most likely to contain login APIs)
                const networkClasses = [
                    'okhttp3.OkHttpClient',
                    'retrofit2.Retrofit',
                    'java.net.HttpURLConnection',
                    'android.webkit.WebView'
                ];

                // Layer 2: Authentication-related classes
                const authClasses = [
                    'android.accounts.AccountManager',
                    'android.security.keystore.KeyStore',
                    'javax.crypto.Cipher'
                ];

                // Layer 3: UI classes that might trigger login
                const uiClasses = [
                    'android.widget.EditText',
                    'android.widget.Button',
                    'android.app.Activity'
                ];

                // Combine all target classes
                const targetClasses = [...networkClasses, ...authClasses, ...uiClasses];

                targetClasses.forEach(className => {
                    try {
                        const targetClass = Java.use(className);
                        console.log(`[+] Hooked: ${className}`);

                        // Get all methods of the class
                        const methods = targetClass.class.getDeclaredMethods();

                        methods.forEach(method => {
                            const methodName = method.getName();

                            // Quick filter: only hook methods that might be login-related
                            const isLoginRelated = loginPatterns.some(pattern =>
                                pattern.test(methodName) || pattern.test(className + '.' + methodName)
                            );

                            if (isLoginRelated) {
                                try {
                                    const overloads = targetClass[methodName].overloads;
                                    if (overloads && overloads.length > 0) {
                                        overloads.forEach(overload => {
                                            overload.implementation = function () {
                                                apiCallCount++;

                                                try {
                                                    // Call original method
                                                    const result = this[methodName].apply(this, arguments);

                                                    // Check against regex patterns
                                                    const methodSignature = `${className}.${methodName}`;
                                                    let matchedPattern = null;

                                                    Object.keys(patterns).forEach(patternName => {
                                                        try {
                                                            const regex = new RegExp(patterns[patternName], 'i');
                                                            if (regex.test(methodSignature)) {
                                                                matchedPattern = patternName;
                                                                patternMatchCounts[patternName]++;
                                                            }
                                                        } catch (e) {
                                                            // Skip invalid patterns
                                                        }
                                                    });

                                                    if (matchedPattern) {
                                                        matchedApiCallCount++;
                                                        console.log(`[API] ${methodSignature} (Pattern: ${matchedPattern})`);

                                                        // Send API call data
                                                        send({
                                                            type: 'api_call',
                                                            timestamp: Date.now(),
                                                            pattern: matchedPattern,
                                                            class: className,
                                                            method: methodName,
                                                            args: Array.from(arguments).map(String),
                                                            result: String(result),
                                                            callId: apiCallCount
                                                        });
                                                    }

                                                    // Periodic logging (less frequent)
                                                    if (apiCallCount % 20 === 0) {
                                                        console.log(`[MONITOR] Processed ${apiCallCount} API calls, ${matchedApiCallCount} matched`);
                                                    }

                                                    return result;
                                                } catch (e) {
                                                    console.log(`[ERROR] In ${className}.${methodName}: ${e.message}`);
                                                    return this[methodName].apply(this, arguments);
                                                }
                                            };
                                        });
                                    }
                                } catch (e) {
                                    // Skip methods that can't be hooked
                                }
                            }
                        });

                    } catch (e) {
                        console.log(`[WARNING] Failed to hook class ${className}: ${e.message}`);
                    }
                });

                // Send completion statistics
                send({
                    type: 'statistics',
                    timestamp: Date.now(),
                    apiCallCount: apiCallCount,
                    matchedApiCallCount: matchedApiCallCount,
                    patternMatchCounts: patternMatchCounts
                });

                console.log('[+] Smart hooking completed');
                console.log('[+] SMART_HOOKING_COMPLETE');

                // Set up periodic statistics reporting
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
                }, 30000); // Report every 30 seconds

            } catch (e) {
                console.log('[ERROR] Agent error:', e.message);
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