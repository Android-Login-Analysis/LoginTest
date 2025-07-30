rpc.exports = {
    init: function (patterns) {
        console.log('[*] Basic agent init called');

        Java.perform(function () {
            console.log('[*] Java.perform started');

            try {
                // Only hook Activity.onCreate with minimal processing
                const Activity = Java.use('android.app.Activity');
                console.log('[+] Hooked: android.app.Activity');

                Activity.onCreate.overloads.forEach(overload => {
                    overload.implementation = function (bundle) {
                        try {
                            // Call original method first
                            const result = this.onCreate(bundle);

                            // Simple logging only
                            console.log('[API] Activity.onCreate called');

                            // Send minimal data
                            send({
                                type: 'api_call',
                                timestamp: Date.now(),
                                class: 'android.app.Activity',
                                method: 'onCreate'
                            });

                            return result;
                        } catch (e) {
                            console.log(`[ERROR] In Activity.onCreate: ${e.message}`);
                            return this.onCreate(bundle);
                        }
                    };
                });

                console.log('[+] Basic hooking completed');
                console.log('[+] BASIC_HOOKING_COMPLETE');

                // Send completion message
                send({
                    type: 'statistics',
                    timestamp: Date.now(),
                    message: 'Basic hooking completed'
                });

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