// Receive regular expressions from the Python script
var patterns = [];
var hookedMethods = new Set(); // Track hooked methods to avoid duplicate hooks

recv('input', function onInput(input) {
    try {
        patterns = input.payload.map(pattern => new RegExp(pattern));
        monitorAPIs();
    } catch (e) {
        send({
            type: 'error',
            message: 'Failed to initialize patterns: ' + e.message
        });
    }
});

function monitorAPIs() {
    Java.perform(function () {
        try {
            Java.enumerateLoadedClasses({
                onMatch: function (className) {
                    try {
                        var clazz = Java.use(className);
                        Object.keys(clazz).forEach(function (methodName) {
                            // Check if method has already been hooked
                            if (hookedMethods.has(className + '.' + methodName)) {
                                return;
                            }

                            patterns.forEach(function (pattern, index) {
                                if (pattern.test(methodName)) {
                                    try {
                                        var overloads = clazz[methodName].overloads;
                                        for (var i in overloads) {
                                            var originalMethod = overloads[i];
                                            overloads[i].implementation = function () {
                                                var args = Array.prototype.slice.call(arguments);
                                                var startTime = new Date().getTime();
                                                var result;
                                                var error = null;

                                                try {
                                                    result = originalMethod.apply(this, arguments);
                                                } catch (e) {
                                                    error = e.message;
                                                }

                                                var endTime = new Date().getTime();
                                                var executionTime = endTime - startTime;

                                                var message = {
                                                    type: 'api_call',
                                                    timestamp: new Date().toISOString(),
                                                    className: className,
                                                    methodName: methodName,
                                                    regexIndex: index,
                                                    args: args,
                                                    result: result,
                                                    error: error,
                                                    executionTime: executionTime
                                                };

                                                send(message);
                                                return result;
                                            };
                                        }
                                        // Mark method as hooked
                                        hookedMethods.add(className + '.' + methodName);
                                    } catch (e) {
                                        send({
                                            type: 'error',
                                            message: `Error hooking ${className}.${methodName}: ${e.message}`
                                        });
                                    }
                                }
                            });
                        });
                    } catch (e) {
                        send({
                            type: 'error',
                            message: `Error processing class ${className}: ${e.message}`
                        });
                    }
                },
                onComplete: function () {
                    send({
                        type: 'status',
                        message: 'API monitoring initialized'
                    });
                }
            });
        } catch (e) {
            send({
                type: 'error',
                message: 'Failed to enumerate classes: ' + e.message
            });
        }
    });
}

// Cleanup function to release resources when script is unloaded
function cleanup() {
    hookedMethods.clear();
    patterns = [];
}

// Register cleanup function
process.on('detach', cleanup);
