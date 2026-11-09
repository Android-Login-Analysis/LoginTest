// Taint tracking store with improved matching and deduplication
var TaintStore = {
    taints: new Map(),
    flows: [],
    flowCache: new Map(), // Cache to avoid duplicate flow records
    FLOW_CACHE_TIMEOUT: 5000, // 5 seconds
    
    mark: function(value, type) {
        if (!value) return null;
        const valueStr = value.toString();
        if (valueStr.length === 0) return null;
        
        // Check if already marked
        if (this.taints.has(valueStr)) {
            return this.taints.get(valueStr).id;
        }
        
        const taintId = 'TAINT_' + type + '_' + Date.now();
        const taintInfo = {
            id: taintId,
            type: type,
            timestamp: Date.now(),
            valueLength: valueStr.length,
            value: valueStr
        };
        this.taints.set(valueStr, taintInfo);
        send({
            type: 'taint_marked',
            taint_id: taintId,
            taint_type: type,
            timestamp: Date.now()
        });
        return taintId;
    },
    
    check: function(value) {
        if (!value) return null;
        const valueStr = value.toString();
        // Direct match
        if (this.taints.has(valueStr)) {
            return this.taints.get(valueStr);
        }
        // Partial match for longer strings (only if value is substantial)
        if (valueStr.length > 3) {
            for (let [key, taint] of this.taints) {
                if (valueStr.includes(key) || key.includes(valueStr)) {
                    return taint;
                }
            }
        }
        return null;
    },
    
    recordFlow: function(taint, sink, method) {
        // Deduplicate flow records
        const flowKey = `${taint.id}:${sink}`;
        const now = Date.now();
        const lastRecord = this.flowCache.get(flowKey);
        
        if (lastRecord && (now - lastRecord) < this.FLOW_CACHE_TIMEOUT) {
            return; // Skip duplicate flow
        }
        this.flowCache.set(flowKey, now);
        
        const flow = {
            taint_id: taint.id,
            taint_type: taint.type,
            sink: sink,
            method: method,
            timestamp: now
        };
        this.flows.push(flow);
        send({
            type: 'taint_flow',
            ...flow
        });
    }
};

// Authentication context tracking for fine-grained state detection
var authContext = {
    currentPhase: 'Unknown',
    networkCallActive: false,
    lastMethod: null,
    lastTimestamp: Date.now(),
    
    updatePhase: function(phase) {
        if (this.currentPhase !== phase) {
            console.log(`[AUTH_CONTEXT] Phase transition: ${this.currentPhase} -> ${phase}`);
            this.currentPhase = phase;
            this.lastTimestamp = Date.now();
        }
    },
    
    setNetworkActive: function(active) {
        if (this.networkCallActive !== active) {
            this.networkCallActive = active;
            console.log(`[AUTH_CONTEXT] Network call: ${active}`);
        }
    }
};

rpc.exports = {
    init: function (staticAnalysisOrPatterns, hookConfig) {
        console.log('[*] Configurable login agent init called');

        Java.perform(function () {
            console.log('[*] Java.perform started');

            // FIX(v1): record string extras put into Intents/Bundles (key + SHA-256 of value) so the
            // oracle can tell whether the login password is passed around in plaintext (e.g. NewsBlur #1996).
            try {
                const MD = Java.use('java.security.MessageDigest');
                const JStr = Java.use('java.lang.String');
                const sha = function (v) {
                    const d = MD.getInstance('SHA-256').digest(JStr.$new(v).getBytes('UTF-8'));
                    let h = ''; for (let i = 0; i < d.length; i++) h += ('0' + (d[i] & 0xff).toString(16)).slice(-2);
                    return h;
                };
                const report = function (where, k, v) {
                    try { if (v !== null && v !== undefined && ('' + v).length >= 4 && ('' + v).length <= 128) send({type: 'intent_extra', where: where, key: '' + k, sha: sha('' + v)}); } catch (e) { }
                };
                const Intent = Java.use('android.content.Intent');
                const putStr = Intent.putExtra.overload('java.lang.String', 'java.lang.String');
                putStr.implementation = function (k, v) { report('Intent', k, v); return putStr.call(this, k, v); };
                const Bundle = Java.use('android.os.BaseBundle');
                const bPut = Bundle.putString.overload('java.lang.String', 'java.lang.String');
                bPut.implementation = function (k, v) { report('Bundle', k, v); return bPut.call(this, k, v); };
                console.log('[+] Intent/Bundle extra recorder installed');
            } catch (e) { console.log('[-] Intent extra recorder unavailable: ' + e); }

            // FIX(v1): expose WebView content to the DevTools protocol so LIFTDroid can drive web-based
            // login forms that are hidden from the accessibility tree (e.g. custom WebView wrappers).
            try {
                const WebViewCls = Java.use('android.webkit.WebView');
                Java.scheduleOnMainThread(function () {
                    try {
                        WebViewCls.setWebContentsDebuggingEnabled(true);
                        console.log('[+] WebView debugging enabled');
                    } catch (e) { console.log('[-] WebView debugging not enabled: ' + e); }
                });
            } catch (e) { console.log('[-] WebView class unavailable: ' + e); }

            try {
                // Parse hook configuration
                let config = {};
                let staticAnalysisResult = null;
                
                // Check if first parameter is static analysis result (has 'matches' field)
                if (staticAnalysisOrPatterns && typeof staticAnalysisOrPatterns === 'object' && staticAnalysisOrPatterns.matches) {
                    staticAnalysisResult = staticAnalysisOrPatterns;
                    console.log('[+] Received static analysis result');
                    console.log(`[*] Total methods in analysis: ${staticAnalysisResult.statistics?.totalMethods || 0}`);
                    console.log(`[*] Matched methods: ${staticAnalysisResult.statistics?.matchedMethods || 0}`);
                }
                
                // Load error state detection config
                let errorStateConfig = null;
                if (hookConfig) {
                    try {
                        const parsedConfig = JSON.parse(hookConfig);
                        errorStateConfig = parsedConfig.globalSettings?.errorStateDetection;
                        console.log('[*] Error state detection:', errorStateConfig?.enabled ? 'enabled' : 'disabled');
                    } catch (e) {
                        console.log('[!] Failed to parse error state config:', e.message);
                    }
                }
                
                if (hookConfig) {
                    try {
                        config = JSON.parse(hookConfig);
                        console.log(`[+] Loaded hook configuration with ${Object.keys(config.hookCategories || {}).length} categories`);
                    } catch (e) {
                        console.log(`[-] Failed to parse hook config: ${e.message}`);
                        config = { hookCategories: {} };
                    }
                } else {
                    console.log('[*] No hook config provided');
                    config = { hookCategories: {} };
                }

                // Helper function to safely hook methods
                // FIX(v1): pre-flight class loading through Java-level reflection so that classes whose
                // method signatures reference unavailable types (e.g. build-time code shaded into the APK)
                // raise a catchable Java exception here instead of aborting the process inside Frida's
                // JNI method enumeration ("JNI DETECTED ERROR: obj == null").
                // Build-time code shaded into APKs and low-level library internals (hot paths, not login logic).
                // Public library APIs (e.g. okhttp3.Call, okhttp3.Response) remain hooked.
                const SKIP_PACKAGE_PREFIXES = ['de.undercouch.gradle.', 'okhttp3.internal.', 'okio.',
                    // UI widget internals run on the drawing path (e.g. EditText.getText during onPreDraw);
                    // hooking them crashed apps in ART's JNI trampoline and they carry no login logic.
                    'androidx.appcompat.', 'android.widget.', 'com.google.android.material.',
                    // React Native framework internals (per-frame rendering path); RN login logic lives in JS
                    'com.facebook.react.', 'com.facebook.hermes.', 'com.facebook.yoga.'];
                // FIX(v1): hot-method guard. A method invoked thousands of times is not a login state
                // transition; keeping its hook exhausts the JNI global reference table and crashes the app.
                const HOT_CALL_LIMIT = 2000;
                const classSafetyCache = {};
                function isClassSafeToHook(className) {
                    if (className in classSafetyCache) return classSafetyCache[className];
                    let safe = true;
                    if (SKIP_PACKAGE_PREFIXES.some(p => className.startsWith(p))) {
                        safe = false;
                    } else {
                        try {
                            const JClass = Java.use('java.lang.Class');
                            const loader = Java.classFactory.loader ||
                                Java.use('java.lang.Thread').currentThread().getContextClassLoader();
                            const k = JClass.forName(className, false, loader);
                            k.getDeclaredMethods();
                            k.getDeclaredConstructors();
                            k.getDeclaredFields();   // Java.use() also resolves field types
                        } catch (e) {
                            safe = false;
                        }
                    }
                    if (!safe) console.log(`[-] Skipped unsafe class: ${className}`);
                    classSafetyCache[className] = safe;
                    return safe;
                }

                function hookMethod(className, methodName, implementation) {
                    try {
                        if (!isClassSafeToHook(className)) return false;
                        const clazz = Java.use(className);
                        const method = clazz[methodName];
                        if (method && method.overloads) {
                            method.overloads.forEach(overload => {
                                let calls = 0;
                                overload.implementation = function() {
                                    // hot methods: pass straight through. Reverting the hook at runtime (unhooking) races
                                    // with calls already inside the trampoline and crashes in GenericJniMethodEnd.
                                    if (calls >= HOT_CALL_LIMIT) return overload.apply(this, arguments);
                                    if (++calls === HOT_CALL_LIMIT) console.log(`[-] Hot method, now pass-through: ${className}.${methodName}`);
                                    return implementation.call(this, overload, Array.prototype.slice.call(arguments));
                                };
                            });
                            console.log(`[+] Hooked: ${className}.${methodName}`);
                            return true;
                        }
                    } catch (e) {
                        console.log(`[-] Failed to hook ${className}.${methodName}: ${e.message}`);
                    }
                    return false;
                }

                // Log deduplication cache
                const logCache = new Map();
                const LOG_CACHE_TIMEOUT = 2000; // 2 seconds
                
                // Helper function to log API calls with taint checking and deduplication
                function logApiCall(className, methodName, args, extra) {
                    const timestamp = Date.now();
                    // Note: stateName from extra should already be mapped by createConfigurableHook
                    const stateName = extra && extra.stateName ? extra.stateName : null;
                    
                    // Check if any argument is tainted (check first for priority)
                    let taintDetected = false;
                    if (args && args.length > 0) {
                        args.forEach((arg, index) => {
                            if (arg && arg.toString().includes('[TAINTED:')) {
                                taintDetected = true; // Already marked
                            } else if (arg) {
                                const argStr = arg.toString ? arg.toString() : String(arg);
                                if (argStr.length > 0 && argStr.length < 1000) { // Skip very long strings
                                    const taint = TaintStore.check(argStr);
                                    if (taint) {
                                        taintDetected = true;
                                        TaintStore.recordFlow(taint, `${className}.${methodName}`, `arg[${index}]`);
                                    }
                                }
                            }
                        });
                    }
                    
                    // Only send if state is known OR taint detected OR method is important
                    const isImportant = methodName.includes('http') || methodName.includes('Http') ||
                                       methodName.includes('network') || methodName.includes('Network') ||
                                       methodName.includes('crypto') || methodName.includes('Crypto') ||
                                       methodName.includes('SharedPreferences') || 
                                       methodName.includes('putString') || methodName.includes('getString') ||
                                       methodName === 'onCreate' || methodName === 'onResume';
                    
                    if (!stateName && !taintDetected && !isImportant) {
                        return; // Skip logging unimportant calls without state
                    }
                    
                    // Deduplicate logs - only log if not seen recently
                    const logKey = `${className}.${methodName}:${stateName || 'none'}:${taintDetected}`;
                    const lastLog = logCache.get(logKey);
                    if (lastLog && (timestamp - lastLog) < LOG_CACHE_TIMEOUT) {
                        return; // Skip duplicate log
                    }
                    logCache.set(logKey, timestamp);
                    
                    send({
                        type: 'api_call',
                        timestamp: timestamp,
                        class: className,
                        method: methodName,
                        args: args || [],
                        extra: extra || {},
                        state: stateName || 'Unknown',  // Already mapped in createConfigurableHook
                        tainted: taintDetected
                    });
                }

                // Helper function to check keyword filters
                function matchesKeywords(text, keywords) {
                    if (!text || !keywords || keywords.length === 0) return false;
                    const lowerText = text.toString().toLowerCase();
                    return keywords.some(keyword => lowerText.includes(keyword.toLowerCase()));
                }

                // Detect fine-grained states based on method context
                function detectFineGrainedState(className, methodName, args) {
                    // AsyncTask lifecycle states
                    if (methodName === 'onPreExecute') {
                        authContext.updatePhase('PreparingAuth');
                        return 'PreparingAuth';
                    }
                    if (methodName === 'doInBackground') {
                        authContext.setNetworkActive(true);
                        authContext.updatePhase('SendingCredentials');
                        return 'SendingCredentials';
                    }
                    if (methodName === 'onPostExecute') {
                        authContext.setNetworkActive(false);
                        authContext.updatePhase('ParsingResponse');
                        return 'ParsingResponse';
                    }
                    
                    // Network operation states
                    if ((methodName === 'execute' || methodName === 'enqueue') && 
                        (className.includes('okhttp') || className.includes('retrofit') || className.includes('Call'))) {
                        authContext.setNetworkActive(true);
                        return 'SendingCredentials';
                    }
                    if (methodName === 'connect' && className.includes('HttpURLConnection')) {
                        authContext.setNetworkActive(true);
                        return 'SendingCredentials';
                    }
                    if (methodName === 'getResponseCode') {
                        return 'AwaitingResponse';
                    }
                    
                    // Response parsing states
                    if (methodName === 'fromJson' && className.includes('Gson')) {
                        return 'ParsingResponse';
                    }
                    if (methodName === '<init>' && className.includes('JSONObject')) {
                        return 'ParsingResponse';
                    }
                    
                    // Session/credential validation states
                    if (methodName === 'edit' && className.includes('SharedPreferences')) {
                        if (authContext.currentPhase === 'ParsingResponse') {
                            return 'ValidatingCredentials';
                        }
                    }
                    if (methodName.toLowerCase().includes('updateuserprofile') || 
                        methodName.toLowerCase().includes('loadprofile') ||
                        methodName.toLowerCase().includes('getuserprofile')) {
                        return 'LoadingProfile';
                    }
                    if (methodName.toLowerCase().includes('savesession') ||
                        methodName.toLowerCase().includes('storetoken')) {
                        return 'ValidatingCredentials';
                    }
                    
                    // Feed/data retrieval states
                    if (methodName.toLowerCase().includes('retrievefeed') ||
                        methodName.toLowerCase().includes('loadfeed') ||
                        methodName.toLowerCase().includes('syncfeed')) {
                        return 'RetrievingFeeds';
                    }
                    if (methodName.toLowerCase().includes('subscriptionsync') ||
                        methodName.toLowerCase().includes('initsync')) {
                        return 'InitializingSync';
                    }
                    
                    // Activity transitions (success/failure)
                    if (methodName === 'startActivity' && args && args.length > 0) {
                        try {
                            const intentStr = args[0].toString().toLowerCase();
                            if (intentStr.includes('main') && !intentStr.includes('login')) {
                                return 'LoggedIn';
                            }
                            if (intentStr.includes('login')) {
                                return 'ReturnToLogin';
                            }
                        } catch (e) {}
                    }
                    
                    // Toast messages (error display)
                    if (methodName === 'show' && className.includes('Toast')) {
                        return 'ShowingError';
                    }
                    
                    return null;  // No fine-grained state detected
                }
                
                // Map IR states to runtime states
                function mapIRToRuntimeState(irState, className, methodName) {
                    const stateMapping = {
                        // Precise static analysis states
                        'WebViewUsage': 'CredentialInput',
                        
                        // Normal flow states
                        'CredentialInput': 'CredentialInput',
                        'Authenticating': 'Authenticating',
                        'CheckingToken': 'CheckingToken',
                        'LoggedIn_Via_Token': 'LoggedIn',
                        'LoginSuccess': 'LoggedIn',
                        'LoggedIn_NoMFA': 'LoggedIn',
                        'LoggedIn_WithMFA': 'LoggedIn',
                        
                        // Error states (keep as-is, already runtime states)
                        'LoginFailure': 'LoginFailure',
                        'InvalidCredentials': 'InvalidCredentials',
                        'CredentialFormatError': 'CredentialFormatError',
                        'NetworkError': 'NetworkError',
                        'ServiceUnavailable_Auth': 'ServiceUnavailable_Auth',
                        'ServiceUnavailable_MFA_Send': 'ServiceUnavailable_MFA_Send',
                        'ServiceUnavailable_MFA_Verify': 'ServiceUnavailable_MFA_Verify',
                        'MFAError': 'MFAError'
                    };
                    
                    // Handle IR states from static analysis
                    if (irState === 'IR_LoginEvidence') {
                        // Filter out common library packages (not app-specific)
                        const libraryPackages = [
                            'com.google.gson',
                            'androidx.',
                            'android.support.',
                            'com.google.android.',
                            'okhttp3.',
                            'retrofit2.',
                            'com.squareup.'
                        ];
                        
                        // Check if it's a library class
                        const isLibrary = libraryPackages.some(pkg => className.startsWith(pkg));
                        if (isLibrary) {
                            return 'Unknown';  // Ignore library calls
                        }
                        
                        // App-specific IR_LoginEvidence -> map to Authenticating
                        // These are likely network calls or credential processing
                        return 'Authenticating';
                    }
                    
                    // Handle IR_WebViewEvidence - WebView usage during login
                    if (irState === 'IR_WebViewEvidence') {
                        // WebView is typically used for credential input or OAuth
                        // Map to CredentialInput as it's UI-related
                        return 'CredentialInput';
                    }
                    
                    // Map any other IR_ states to Unknown by default
                    if (irState && irState.startsWith('IR_')) {
                        console.log(`[WARN] Unmapped IR state: ${irState} for ${className}.${methodName}`);
                        return 'Unknown';
                    }
                    
                    return stateMapping[irState] || irState;
                }

                // Helper function to detect error state from return value or arguments
                function detectErrorState(methodName, args, returnValue, errorConfig) {
                    if (!errorConfig || !errorConfig.enabled) return null;
                    
                    // Check HTTP error codes
                    if ((methodName === 'getResponseCode' || methodName === 'code') && returnValue !== undefined) {
                        const code = returnValue.toString();
                        const errorState = errorConfig.httpErrorCodes?.[code];
                        if (errorState) {
                            console.log(`[ERROR] HTTP ${code} -> ${errorState}`);
                            return errorState;
                        }
                    }
                    
                    // Check error keywords in arguments or messages
                    if (args && args.length > 0) {
                        const argsText = args.join(' ').toLowerCase();
                        for (const [keyword, state] of Object.entries(errorConfig.errorKeywords || {})) {
                            if (argsText.includes(keyword.toLowerCase())) {
                                console.log(`[ERROR] Keyword "${keyword}" detected -> ${state}`);
                                return state;
                            }
                        }
                    }
                    
                    return null;
                }

                // Dynamic hook creation based on configuration
                function createConfigurableHook(hookDef) {
                    return function(overload, args) {
                        // FIX(v1): call the exact hooked overload; never let logging errors reach the app
                        const result = overload.apply(this, args);
                        try {
                        
                        let shouldLog = true;
                        let capturedArgs = [];
                        let extra = { category: hookDef.category };
                        
                        // Detect error states from return value or arguments
                        const detectedErrorState = detectErrorState(hookDef.methodName, args, result, errorStateConfig);
                        
                        // Try to detect fine-grained state first (highest priority)
                        const fineGrainedState = detectFineGrainedState(hookDef.className, hookDef.methodName, args);
                        
                        // Add stateName with priority: Error > FineGrained > IR-mapped
                        if (detectedErrorState) {
                            extra.stateName = detectedErrorState;
                        } else if (fineGrainedState) {
                            extra.stateName = fineGrainedState;
                        } else if (hookDef.stateName) {
                            extra.stateName = mapIRToRuntimeState(hookDef.stateName, hookDef.className, hookDef.methodName);
                        }
                        
                        // Auto-taint marking for password inputs via setText
                        if (hookDef.methodName === 'setText' && args.length > 0 && args[0]) {
                            try {
                                const hint = this.getHint ? this.getHint() : null;
                                const hintStr = hint ? hint.toString().toLowerCase() : '';
                                
                                // Check if this looks like a password field
                                if (hintStr.includes('password') || hintStr.includes('pass') || 
                                    hintStr.includes('pwd') || hintStr.includes('pin')) {
                                    const value = args[0].toString();
                                    TaintStore.mark(value, 'PASSWORD_INPUT');
                                    console.log(`[AUTO-TAINT] Marked password input via setText (hint: ${hintStr}, length: ${value.length})`);
                                }
                            } catch (e) {
                                // Silently ignore hint check errors
                            }
                        }
                        
                        // Auto-taint marking for password inputs via getText (for ADB input)
                        if (hookDef.methodName === 'getText' && result) {
                            try {
                                const value = result.toString();
                                if (value.length > 0) {
                                    const hint = this.getHint ? this.getHint() : null;
                                    const hintStr = hint ? hint.toString().toLowerCase() : '';
                                    const inputType = this.getInputType ? this.getInputType() : 0;
                                    
                                    // Check if this is a password field (hint or input type)
                                    // TYPE_TEXT_VARIATION_PASSWORD = 128, TYPE_NUMBER_VARIATION_PASSWORD = 16
                                    const isPasswordType = (inputType & 0x80) !== 0 || (inputType & 0x10) !== 0;
                                    const isPasswordHint = hintStr.includes('password') || hintStr.includes('pass') || 
                                                          hintStr.includes('pwd') || hintStr.includes('pin') ||
                                                          hintStr.includes('senha'); // Portuguese for password
                                    const isUsernameHint = hintStr.includes('user') || hintStr.includes('email') ||
                                                          hintStr.includes('account') || hintStr.includes('login');
                                    
                                    if (isPasswordType || isPasswordHint) {
                                        const existing = TaintStore.check(value);
                                        if (!existing) {
                                            const taintId = TaintStore.mark(value, 'PASSWORD');
                                            send({
                                                type: 'taint_marked',
                                                taint_id: taintId,
                                                taint_type: 'PASSWORD',
                                                hint: hintStr,
                                                inputType: inputType,
                                                length: value.length
                                            });
                                        }
                                    } else if (isUsernameHint && value.length > 2) {
                                        const existing = TaintStore.check(value);
                                        if (!existing) {
                                            const taintId = TaintStore.mark(value, 'USERNAME');
                                            send({
                                                type: 'taint_marked',
                                                taint_id: taintId,
                                                taint_type: 'USERNAME',
                                                hint: hintStr,
                                                length: value.length
                                            });
                                        }
                                    }
                                }
                            } catch (e) {
                                // Silently ignore errors
                            }
                        }

                        // Apply keyword filters if specified
                        if (hookDef.keywordFilters && hookDef.keywordFilters.length > 0) {
                            shouldLog = false;
                            
                            // Check method arguments
                            for (let i = 0; i < args.length; i++) {
                                if (matchesKeywords(args[i], hookDef.keywordFilters)) {
                                    shouldLog = true;
                                    break;
                                }
                            }
                            
                            // Check hint for EditText
                            if (!shouldLog && hookDef.checkHint && this.getHint) {
                                try {
                                    const hint = this.getHint();
                                    if (hint && matchesKeywords(hint, hookDef.keywordFilters)) {
                                        shouldLog = true;
                                        capturedArgs.push(`hint:${hint.toString()}`);
                                    }
                                } catch (e) {}
                            }
                            
                            // Check text for Views
                            if (!shouldLog && hookDef.checkText && this.getText) {
                                try {
                                    const text = this.getText();
                                    if (text && matchesKeywords(text, hookDef.keywordFilters)) {
                                        shouldLog = true;
                                        capturedArgs.push(`text:${text.toString()}`);
                                    }
                                } catch (e) {}
                            }
                        }

                        // Capture specific arguments if configured
                        if (shouldLog && hookDef.captureArgs) {
                            if (hookDef.argFilters) {
                                // Capture specific argument types
                                hookDef.argFilters.forEach(filter => {
                                    if (filter === 'url' && this.getURL) {
                                        try {
                                            capturedArgs.push(`url:${this.getURL().toString()}`);
                                        } catch (e) {}
                                    } else if (filter === 'algorithm' && this.getAlgorithm) {
                                        try {
                                            capturedArgs.push(`algorithm:${this.getAlgorithm()}`);
                                        } catch (e) {}
                                    }
                                });
                            } else {
                                // Capture all arguments (with masking if specified)
                                args.forEach((arg, index) => {
                                    if (arg !== null && arg !== undefined) {
                                        let argValue = arg.toString();
                                        if (hookDef.maskValues && index === 1) { // Typically value is second arg
                                            argValue = '***';
                                        }
                                        capturedArgs.push(`arg${index}:${argValue}`);
                                    }
                                });
                            }
                        }

                        // Check for tainted result values (only for important methods)
                        let taintDetected = false;
                        if (result && (hookDef.methodName === 'getText' || hookDef.methodName.includes('get') || hookDef.methodName.includes('output'))) {
                            const resultStr = result.toString ? result.toString() : String(result);
                            if (resultStr.length > 0) {
                                const taint = TaintStore.check(resultStr);
                                if (taint) {
                                    taintDetected = true;
                                    TaintStore.recordFlow(taint, `${hookDef.className}.${hookDef.methodName}`, 'return_value');
                                    capturedArgs.push(`[TAINTED:${taint.type}]`);
                                    // Force log if tainted
                                    shouldLog = true;
                                }
                            }
                        }
                        
                        if (shouldLog) {
                            logApiCall(hookDef.className, hookDef.methodName, capturedArgs, extra);
                        }

                        } catch (hookErr) { /* swallow: instrumentation must not alter app behavior */ }
                        return result;
                    };
                }

                // Process hook configuration and create hooks dynamically
                let hooksCreated = 0;
                
                for (const [categoryName, category] of Object.entries(config.hookCategories || {})) {
                    if (!category.enabled) {
                        console.log(`[*] Skipping disabled category: ${categoryName}`);
                        continue;
                    }
                    
                    console.log(`[*] Processing category: ${categoryName} (${category.hooks?.length || 0} hooks)`);
                    
                    for (const hookDef of category.hooks || []) {
                        if (!hookDef.enabled) {
                            continue;
                        }
                        
                        // Add category info to hook definition
                        hookDef.category = categoryName;
                        
                        try {
                            if (category.optional) {
                                // Try to hook optional libraries, skip if not found
                                try {
                                    Java.use(hookDef.className);
                                    hookMethod(hookDef.className, hookDef.methodName, createConfigurableHook(hookDef));
                                    hooksCreated++;
                                } catch (e) {
                                    console.log(`[-] Optional hook skipped: ${hookDef.className}.${hookDef.methodName} (${e.message})`);
                                }
                            } else {
                                // Required hooks
                                hookMethod(hookDef.className, hookDef.methodName, createConfigurableHook(hookDef));
                                hooksCreated++;
                            }
                        } catch (e) {
                            console.log(`[-] Failed to create hook: ${hookDef.className}.${hookDef.methodName} (${e.message})`);
                        }
                    }
                }

                // Hook methods from static analysis result
                if (staticAnalysisResult && staticAnalysisResult.matches) {
                    console.log('[*] Processing static analysis hooks');
                    const matches = staticAnalysisResult.matches;
                    
                    Object.keys(matches).forEach(stateName => {
                        const methods = matches[stateName];
                        console.log(`[*] State ${stateName}: ${methods.length} methods`);
                        
                        methods.forEach(methodInfo => {
                            try {
                                const fullClassName = methodInfo.packageName ? 
                                    `${methodInfo.packageName}.${methodInfo.className}` : 
                                    methodInfo.className;
                                
                                const staticHookDef = {
                                    className: fullClassName,
                                    methodName: methodInfo.methodName,
                                    category: 'static_analysis',
                                    stateName: stateName,
                                    enabled: true,
                                    captureArgs: false
                                };
                                
                                // Try to hook - many classes may not be loaded yet
                                try {
                                    hookMethod(fullClassName, methodInfo.methodName, createConfigurableHook(staticHookDef));
                                    hooksCreated++;
                                } catch (e) {
                                    // Silently skip classes not loaded
                                }
                            } catch (e) {
                                console.log(`[-] Failed to process method: ${e.message}`);
                            }
                        });
                    });
                    
                    console.log(`[+] Static analysis hooks: ${hooksCreated} created`);
                }

                console.log(`[+] Configurable hooking completed: ${hooksCreated} hooks created`);
                console.log('[+] CONFIGURABLE_HOOKING_COMPLETE');

                // Hook Toast.show() for bug detection
                try {
                    const Toast = Java.use('android.widget.Toast');
                    const originalShow = Toast.show;
                    Toast.show.implementation = function() {
                        try {
                            // Try to get the toast message text
                            const view = this.getView();
                            let message = '';
                            
                            if (view) {
                                try {
                                    // Try to find TextView in Toast view
                                    const TextView = Java.use('android.widget.TextView');
                                    const textView = view.findViewById(16908299); // android.R.id.message
                                    if (textView) {
                                        const text = TextView.cast(textView).getText();
                                        if (text) {
                                            message = text.toString();
                                        }
                                    }
                                } catch (e) {
                                    // Fallback: try to get from view's text if it's a TextView
                                    try {
                                        message = view.toString();
                                    } catch (e2) {}
                                }
                            }
                            
                            // Send toast message for bug detection
                            send({
                                type: 'toast_message',
                                timestamp: Date.now(),
                                message: message,
                                currentState: authContext.currentPhase
                            });
                            
                            console.log(`[TOAST] Message: "${message}" (state: ${authContext.currentPhase})`);
                            
                        } catch (e) {
                            console.log('[ERROR] Toast hook error: ' + e.message);
                        }
                        
                        // Call original show()
                        return originalShow.call(this);
                    };
                    console.log('[+] Toast.show() hooked for bug detection');
                } catch (e) {
                    console.log('[!] Could not hook Toast.show(): ' + e.message);
                }
                
                // Hook Snackbar for error messages (NewsBlur might use this)
                try {
                    const Snackbar = Java.use('com.google.android.material.snackbar.Snackbar');
                    const show = Snackbar.show.overload();
                    show.implementation = function() {
                        try {
                            const view = this.getView();
                            if (view) {
                                const TextView = Java.use('android.widget.TextView');
                                const textView = view.findViewById(Java.use('com.google.android.material.R$id').snackbar_text.value);
                                if (textView) {
                                    const text = TextView.cast(textView).getText();
                                    if (text) {
                                        const message = text.toString();
                                        send({
                                            type: 'toast_message',
                                            timestamp: Date.now(),
                                            message: message,
                                            currentState: authContext.currentPhase,
                                            source: 'Snackbar'
                                        });
                                        console.log(`[SNACKBAR] Message: "${message}" (state: ${authContext.currentPhase})`);
                                    }
                                }
                            }
                        } catch (e) {
                            console.log('[ERROR] Snackbar hook error: ' + e.message);
                        }
                        return show.call(this);
                    };
                    console.log('[+] Snackbar.show() hooked for bug detection');
                } catch (e) {
                    console.log('[!] Could not hook Snackbar.show(): ' + e.message);
                }
                
                // Hook TextView.setText to catch error messages in any UI
                try {
                    const TextView = Java.use('android.widget.TextView');
                    const setText = TextView.setText.overload('java.lang.CharSequence', 'android.widget.TextView$BufferType');
                    setText.implementation = function(text, bufferType) {
                        if (text) {
                            const textStr = text.toString().toLowerCase();
                            // Look for error-related keywords
                            if ((textStr.includes('error') || textStr.includes('fail') || 
                                 textStr.includes('invalid') || textStr.includes('wrong') ||
                                 textStr.includes('incorrect') || textStr.includes('cannot')) &&
                                textStr.length > 10 && textStr.length < 200) {
                                
                                send({
                                    type: 'toast_message',
                                    timestamp: Date.now(),
                                    message: text.toString(),
                                    currentState: authContext.currentPhase,
                                    source: 'TextView'
                                });
                                console.log(`[ERROR_TEXT] Captured: "${text.toString().substring(0, 60)}..." (state: ${authContext.currentPhase})`);
                            }
                        }
                        return setText.call(this, text, bufferType);
                    };
                    console.log('[+] TextView.setText() hooked for error detection');
                } catch (e) {
                    console.log('[!] Could not hook TextView.setText(): ' + e.message);
                }
                
                // Send completion message with compatible field names
                send({
                    type: 'statistics',
                    timestamp: Date.now(),
                    message: `Configurable hooking completed: ${hooksCreated} hooks created`,
                    hookedMethods: hooksCreated,  // Compatible with Python's expected field name
                    matchedClasses: 0,  // Not tracked yet
                    apiCallCount: 0  // Will be tracked during runtime
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
    },
    
    marktaint: function (value, type) {
        console.log(`[RPC] markTaint called: type=${type}, length=${value ? value.length : 0}`);
        const taintId = TaintStore.mark(value, type);
        return taintId || 'OK';
    },
    
    gettaintreport: function () {
        const report = {
            taints: Array.from(TaintStore.taints.values()),
            flows: TaintStore.flows,
            violations: TaintStore.flows.filter(f => 
                f.sink.includes('Log') || 
                f.sink.includes('Network') ||
                f.sink.includes('File') ||
                f.sink.includes('SharedPreferences')
            )
        };
        console.log(`[RPC] getTaintReport: ${report.taints.length} taints, ${report.flows.length} flows, ${report.violations.length} violations`);
        return JSON.stringify(report);
    }
}; 