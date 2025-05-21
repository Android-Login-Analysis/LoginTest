// login_agent.js
/*
This script hooks Java methods in an Android application.
It expects to be initialized via RPC with the target application's package name
and a JSON array of API regex pattern strings.
It logs matched method calls to console.log in the format: TIMESTAMP ::: CLASS_NAME.METHOD_NAME
*/

rpc.exports = {
    init: function (appPackageName, apiRegexPatternsJsonString) {
        console.log("[FridaAgent] init called. App Package: " + appPackageName);

        var apiPatterns;
        try {
            // The patterns passed are expected to be just the regex strings for API methods
            apiPatterns = JSON.parse(apiRegexPatternsJsonString).map(function (pStr) {
                try {
                    return new RegExp(pStr);
                } catch (e) {
                    console.error("[FridaAgent] Invalid API regex: " + pStr + " - " + e);
                    return null;
                }
            }).filter(function (p) { return p !== null; });
        } catch (e) {
            console.error("[FridaAgent] Failed to parse apiRegexPatternsJsonString: " + e);
            apiPatterns = [];
        }

        if (apiPatterns.length === 0) {
            console.log("[FridaAgent] No valid API regex patterns provided or failed to parse.");
            return;
        }
        console.log("[FridaAgent] Initialized with " + apiPatterns.length + " API regex patterns for hooking.");

        Java.perform(function () {
            console.log("[FridaAgent] Java.perform() started. Package: " + appPackageName);

            Java.enumerateLoadedClasses({
                onMatch: function (className) {
                    if (appPackageName && !className.startsWith(appPackageName) &&
                        !className.startsWith("android.support.") && // Common support libs
                        !className.startsWith("androidx.") && // AndroidX libs
                        !className.startsWith("com.google.android.") && // Google services
                        !className.startsWith("java.") && // Standard Java, usually too broad
                        !className.startsWith("javax.") &&
                        !className.startsWith("dalvik.") &&
                        !className.startsWith("android.os.") && // Usually too low-level unless specific
                        !className.startsWith("com.android.")) { // System services, can be broad
                        return;
                    }

                    try {
                        var clazz = Java.use(className);
                        var methods = clazz.class.getDeclaredMethods();

                        methods.forEach(function (method) {
                            var methodName = method.getName();
                            var shouldHook = false;
                            for (var i = 0; i < apiPatterns.length; i++) {
                                if (apiPatterns[i].test(methodName)) {
                                    shouldHook = true;
                                    break;
                                }
                            }

                            if (shouldHook) {
                                var overloads = clazz[methodName].overloads;
                                if (overloads && overloads.length > 0) {
                                    overloads.forEach(function (overload) {
                                        var originalImplementation = overload.implementation;
                                        overload.implementation = function () {
                                            var timestamp = Date.now();
                                            var logMessage = timestamp + " ::: " + className + "." + methodName;
                                            console.log(logMessage); // Log to Frida console
                                            return originalImplementation.apply(this, arguments);
                                        };
                                    });
                                } else {
                                    if (typeof clazz[methodName] === 'function' && clazz[methodName].implementation) {
                                        var originalDirectImpl = clazz[methodName].implementation;
                                        clazz[methodName].implementation = function () {
                                            var timestamp = Date.now();
                                            var logMessage = timestamp + " ::: " + className + "." + methodName;
                                            console.log(logMessage);
                                            return originalDirectImpl.apply(this, arguments);
                                        };
                                    }
                                }
                                // console.log("[FridaAgent] Hooked: " + className + "." + methodName); // Optional: for debugging hooks
                            }
                        });
                    } catch (e) {
                        // Error accessing class or methods, common for system classes if not filtered enough
                        // if (className.startsWith(appPackageName)) { // Log only for app's own classes
                        //    console.log("[FridaAgent] Error processing class " + className + ": " + e.message);
                        // }
                    }
                },
                onComplete: function () {
                    console.log("[FridaAgent] Class enumeration complete. Listening for API calls...");
                }
            });
        });
    },
    dispose: function () {
        console.log("[FridaAgent] dispose called.");
    }
}; 