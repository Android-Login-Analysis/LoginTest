rpc.exports = {
    init: function (patterns) {
        console.log('[*] Minimal agent init called');

        Java.perform(function () {
            console.log('[*] Java.perform started');

            let apiCallCount = 0;
            let matchedApiCallCount = 0;

            try {
                // Only hook one specific class to test stability
                const targetClass = 'android.app.Activity';

                try {
                    const Activity = Java.use(targetClass);
                    console.log(`[+] Hooked: ${targetClass}`);

                    // Only hook onCreate method
                    Activity.onCreate.overloads.forEach(overload => {
                        overload.implementation = function (bundle) {
                            apiCallCount++;
                            console.log(`[API] ${targetClass}.onCreate (Count: ${apiCallCount})`);

                            try {
                                const result = this.onCreate(bundle);
                                matchedApiCallCount++;

                                send({
                                    type: 'api_call',
                                    timestamp: Date.now(),
                                    class: targetClass,
                                    method: 'onCreate',
                                    callId: apiCallCount
                                });

                                return result;
                            } catch (e) {
                                console.log(`[ERROR] In ${targetClass}.onCreate: ${e.message}`);
                                return this.onCreate(bundle);
                            }
                        };
                    });

                    console.log('[+] Activity.onCreate hooked successfully');

                } catch (e) {
                    console.log(`[WARNING] Failed to hook ${targetClass}: ${e.message}`);
                }

                // Send initial stats
                send({
                    type: 'statistics',
                    timestamp: Date.now(),
                    apiCallCount: apiCallCount,
                    matchedApiCallCount: matchedApiCallCount
                });

                console.log('[+] MINIMAL_HOOKING_COMPLETE');

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