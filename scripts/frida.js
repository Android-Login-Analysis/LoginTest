// Receive regular expressions from the Python script
var patterns = [];
recv('input', function onInput(input) {
    patterns = input.payload.map(pattern => new RegExp(pattern));
    monitorAPIs();
});

function monitorAPIs() {
    Java.perform(function () {
        Java.enumerateLoadedClasses({
            onMatch: function (className) {
                var clazz = Java.use(className);
                Object.keys(clazz).forEach(function (methodName) {
                    patterns.forEach(function (pattern, index) {
                        if (pattern.test(methodName)) {
                            try {
                                var overloads = clazz[methodName].overloads;
                                for (var i in overloads) {
                                    var originalMethod = overloads[i];
                                    overloads[i].implementation = function () {
                                        var args = Array.prototype.slice.call(arguments);
                                        var result = originalMethod.apply(this, arguments);
                                        var message = `Class: ${className}, Method: ${methodName}, Regex Index: ${index}, Args: ${JSON.stringify(args)}, Result: ${result}`;
                                        send(message);
                                        return result;
                                    };
                                }
                            } catch (e) {
                                console.log('Error hooking: ' + e);
                            }
                        }
                    });
                });
            },
            onComplete: function () {}
        });
    });
}
