rpc.exports = {
    init: function (patterns) {
        console.log('[*] Simple agent init called');

        Java.perform(function () {
            console.log('[*] Java.perform started');

            let apiCallCount = 0;
            let matchedApiCallCount = 0;

            try {
                // Only hook login-related classes
                const loginClasses = [
                    'android.app.Activity',
                    'android.widget.EditText',
                    'android.widget.Button'
                ];

                loginClasses.forEach(className => {
                    try {
                        const targetClass = Java.use(className);
                        console.log(`[+] Hooked: ${className}`);

                        // Hook only onCreate for Activity
                        if (className === 'android.app.Activity') {
                            targetClass.onCreate.overloads.forEach(overload => {
                                overload.implementation = function (bundle) {
                                    apiCallCount++;
                                    console.log(`[API] ${className}.onCreate (Count: ${apiCallCount})`);

                                    try {
                                        const result = this.onCreate(bundle);
                                        matchedApiCallCount++;

                                        send({
                                            type: 'api_call',
                                            timestamp: Date.now(),
                                            class: className,
                                            method: 'onCreate',
                                            callId: apiCallCount
                                        });

                                        return result;
                                    } catch (e) {
                                        console.log(`[ERROR] In ${className}.onCreate: ${e.message}`);
                                        return this.onCreate(bundle);
                                    }
                                };
                            });
                        }

                        // Hook onClick for Button
                        if (className === 'android.widget.Button') {
                            targetClass.onClick.overloads.forEach(overload => {
                                overload.implementation = function (view) {
                                    apiCallCount++;
                                    console.log(`[API] ${className}.onClick (Count: ${apiCallCount})`);

                                    try {
                                        const result = this.onClick(view);
                                        matchedApiCallCount++;

                                        send({
                                            type: 'api_call',
                                            timestamp: Date.now(),
                                            class: className,
                                            method: 'onClick',
                                            callId: apiCallCount
                                        });

                                        return result;
                                    } catch (e) {
                                        console.log(`[ERROR] In ${className}.onClick: ${e.message}`);
                                        return this.onClick(view);
                                    }
                                };
                            });
                        }

                    } catch (e) {
                        console.log(`[WARNING] Failed to hook ${className}: ${e.message}`);
                    }
                });

                console.log('[+] Simple hooking completed');

                // Send initial stats
                send({
                    type: 'statistics',
                    timestamp: Date.now(),
                    apiCallCount: apiCallCount,
                    matchedApiCallCount: matchedApiCallCount
                });

                console.log('[+] SIMPLE_HOOKING_COMPLETE');

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