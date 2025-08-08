import java.util.*;
import java.util.regex.Pattern;
import java.io.*;

/**
 * State machine manager - responsible for state transition validation and error
 * detection
 */
public class StateMachineManager {
    private Map<String, List<String>> validStateTransitions;
    private List<String> observedStateSequence;
    private ConfigLoader configLoader;

    public StateMachineManager(ConfigLoader configLoader) {
        this.configLoader = configLoader;
        this.observedStateSequence = new ArrayList<>();
        this.validStateTransitions = new HashMap<>(); // Initialize the map to prevent NullPointerException
        
        // Load state machine configuration from regex patterns file
        loadStateMachineFromConfig();
        
        System.out.println("StateMachineManager: initialization complete with " + validStateTransitions.size() + " state transitions");
    }

    /**
     * Load state machine configuration from regex patterns file
     */
    private void loadStateMachineFromConfig() {
        try {
            String regexPatternsPath = "src/main/resources/regex_patterns.txt";
            File patternsFile = new File(regexPatternsPath);
            
            if (!patternsFile.exists()) {
                // Try to load from classpath
                InputStream inputStream = getClass().getClassLoader().getResourceAsStream(regexPatternsPath);
                if (inputStream == null) {
                    System.err.println("StateMachineManager: Cannot find regex patterns file: " + regexPatternsPath);
                    return;
                }
            }
            
            // Read regex patterns and extract state transitions
            List<String> states = new ArrayList<>();
            try (BufferedReader reader = new BufferedReader(
                    patternsFile.exists() ? new FileReader(patternsFile) : 
                    new InputStreamReader(getClass().getClassLoader().getResourceAsStream(regexPatternsPath)))) {
                
                String line;
                while ((line = reader.readLine()) != null) {
                    line = line.trim();
                    
                    // Skip comments and empty lines
                    if (line.isEmpty() || line.startsWith("#") || line.startsWith("=")) {
                        continue;
                    }
                    
                    // Parse format: STATE_NAME:::REGEX_PATTERN
                    if (line.contains(":::")) {
                        String[] parts = line.split(":::", 2);
                        if (parts.length == 2) {
                            String stateName = parts[0].trim();
                            if (!states.contains(stateName)) {
                                states.add(stateName);
                            }
                        }
                    }
                }
            }
            
            // Generate state transitions based on logical flow
            generateStateTransitions(states);
            
            System.out.println("StateMachineManager: Loaded " + states.size() + " states from regex patterns");
            
        } catch (Exception e) {
            System.err.println("StateMachineManager: Failed to load state machine configuration: " + e.getMessage());
            // Use default state transitions as fallback
            loadDefaultStateTransitions();
        }
    }

    /**
     * Generate state transitions based on logical flow
     */
    private void generateStateTransitions(List<String> states) {
        // Pre-Login Phase
        addTransitionIfExists(states, "InitialState", "CheckingToken");
        addTransitionIfExists(states, "InitialState", "CredentialInput");
        addTransitionIfExists(states, "CheckingToken", "LoggedIn_Via_Token");
        addTransitionIfExists(states, "CheckingToken", "CredentialInput");
        addTransitionIfExists(states, "CredentialInput", "EncodingCredentials");
        addTransitionIfExists(states, "CredentialInput", "CredentialFormatError");
        addTransitionIfExists(states, "EncodingCredentials", "Authenticating");
        addTransitionIfExists(states, "CredentialFormatError", "CredentialInput");

        // Login Phase
        addTransitionIfExists(states, "Authenticating", "CheckingCredentials");
        addTransitionIfExists(states, "CheckingCredentials", "ServiceUnavailable_Auth");
        addTransitionIfExists(states, "CheckingCredentials", "InvalidCredentials");
        addTransitionIfExists(states, "CheckingCredentials", "CheckingMFASettings");
        addTransitionIfExists(states, "ServiceUnavailable_Auth", "CredentialInput");
        addTransitionIfExists(states, "ServiceUnavailable_Auth", "InitialState");
        addTransitionIfExists(states, "InvalidCredentials", "CredentialInput");
        addTransitionIfExists(states, "CheckingMFASettings", "MFACodePending");
        addTransitionIfExists(states, "CheckingMFASettings", "LoggedIn_NoMFA");

        // MFA Phase
        addTransitionIfExists(states, "MFACodePending", "SendingMFACode");
        addTransitionIfExists(states, "SendingMFACode", "MFAVerification");
        addTransitionIfExists(states, "SendingMFACode", "ServiceUnavailable_MFA_Send");
        addTransitionIfExists(states, "ServiceUnavailable_MFA_Send", "MFACodePending");
        addTransitionIfExists(states, "MFAVerification", "VerifyingMFA");
        addTransitionIfExists(states, "VerifyingMFA", "ServiceUnavailable_MFA_Verify");
        addTransitionIfExists(states, "VerifyingMFA", "MFAError");
        addTransitionIfExists(states, "VerifyingMFA", "LoggedIn_WithMFA");
        addTransitionIfExists(states, "ServiceUnavailable_MFA_Verify", "MFAVerification");
        addTransitionIfExists(states, "MFAError", "MFACodePending");

        // Post-Login Phase
        addTransitionIfExists(states, "LoggedIn_Via_Token", "AppMainScreen");
        addTransitionIfExists(states, "LoggedIn_NoMFA", "AppMainScreen");
        addTransitionIfExists(states, "LoggedIn_WithMFA", "AppMainScreen");
        addTransitionIfExists(states, "AppMainScreen", "UserLogout");
        addTransitionIfExists(states, "AppMainScreen", "InitialState");
        addTransitionIfExists(states, "UserLogout", "InitialState");
        addTransitionIfExists(states, "UserLogout", "CredentialInput");
    }

    /**
     * Add transition if both states exist
     */
    private void addTransitionIfExists(List<String> states, String fromState, String toState) {
        if (states.contains(fromState) && states.contains(toState)) {
            addStateTransition(fromState, toState);
        }
    }

    /**
     * Load default state transitions as fallback
     */
    private void loadDefaultStateTransitions() {
        System.out.println("StateMachineManager: Loading default state transitions");
        // Add some basic transitions as fallback
        addStateTransition("InitialState", "CredentialInput");
        addStateTransition("CredentialInput", "Authenticating");
        addStateTransition("Authenticating", "AppMainScreen");
        addStateTransition("AppMainScreen", "UserLogout");
        addStateTransition("UserLogout", "InitialState");
    }

    /**
     * Determine state based on API calls
     */
    public String determineStateFromApiCall(String apiName, String apiSignature) {
        // Use regex patterns from config file to match state
        // Here we should get regex patterns from ConfigLoader, but for simplicity,
        // we use hardcoded matching logic

        String apiNameLower = apiName.toLowerCase();
        String signatureLower = apiSignature.toLowerCase();

        // Initial state - app startup related
        if (apiNameLower.contains("application.oncreate") || apiNameLower.contains("activitythread.main") ||
                apiNameLower.contains("zygoteinit.main") || apiNameLower.contains("splashactivity") ||
                apiNameLower.contains("mainactivity.oncreate") || apiNameLower.contains("entryactivity")) {
            return "InitialState";
        }

        // Check token state
        if (apiNameLower.contains("validatetoken") || apiNameLower.contains("checkauthtoken") ||
                apiNameLower.contains("verifysession") || apiNameLower.contains("getcurrentuser") ||
                apiNameLower.contains("getlastsignedinaccount") || apiNameLower.contains("getcurrentaccesstoken") ||
                apiNameLower.contains("performsilentlogin") || apiNameLower.contains("autologinwithtoken")) {
            return "CheckingToken";
        }

        // Successfully logged in via token
        if (apiNameLower.contains("ontokenvalidationsuccess") || apiNameLower.contains("navigatetohomefromtoken") ||
                apiNameLower.contains("autologinsucceeded") || apiNameLower.contains("tokenbasedlogincomplete")) {
            return "LoggedIn_Via_Token";
        }

        // Credential input state
        if (apiNameLower.contains("showloginscreen") || apiNameLower.contains("displaycredentialsview") ||
                apiNameLower.contains("loginactivity.oncreate") || apiNameLower.contains("signinactivity.oncreate") ||
                apiNameLower.contains("edittext.onfocuschanged") || apiNameLower.contains("edittext.settext") ||
                apiNameLower.contains("textwatcher.ontextchanged")) {
            return "CredentialInput";
        }

        // Credential encoding state
        if (apiNameLower.contains("encryptpassword") || apiNameLower.contains("encodecredentialsforapi") ||
                apiNameLower.contains("hashuserpassword") || apiNameLower.contains("base64.encodetostring") ||
                apiNameLower.contains("passwordencoder.encode") || apiNameLower.contains("sha256.digest") ||
                apiNameLower.contains("bcrypt.hashpw") || apiNameLower.contains("messageDigest.getInstance")) {
            return "EncodingCredentials";
        }

        // Credential format error state
        if (apiNameLower.contains("oninvalidemailformat") || apiNameLower.contains("onpasswordpolicyviolation") ||
                apiNameLower.contains("displayinputvalidationerror") || apiNameLower.contains("emailvalidator.validate")
                ||
                apiNameLower.contains("passwordvalidator.validate") || apiNameLower.contains("inputfilter.filter")) {
            return "CredentialFormatError";
        }

        // Authentication state
        if (apiNameLower.contains("onclick")
                && (signatureLower.contains("loginbutton") || signatureLower.contains("signinbutton")) ||
                apiNameLower.contains("performloginaction") || apiNameLower.contains("initiateauthentication") ||
                apiNameLower.contains("attemptusersignin") || apiNameLower.contains("viewmodel.loginuser") ||
                apiNameLower.contains("loginusecase.execute")
                || apiNameLower.contains("authrepository.loginwithcredentials")) {
            return "Authenticating";
        }

        // Check credential state
        if (apiNameLower.contains("authservice.checkcredentials")
                || apiNameLower.contains("userauthenticator.verifypassword") ||
                apiNameLower.contains("apiclient.postloginrequest") || apiNameLower.contains("validateaccountpassword")
                ||
                apiNameLower.contains("retrofit.call.execute") || apiNameLower.contains("okhttp3.call.enqueue") ||
                apiNameLower.contains("firebaseauth.signinwithemailandpassword")
                || apiNameLower.contains("googlesignin.getsigninintent") ||
                apiNameLower.contains("facebookloginmanager.loginwithreadpermissions")) {
            return "CheckingCredentials";
        }

        // Authentication service unavailable state
        if (apiNameLower.contains("onnetworkerror") || apiNameLower.contains("handleserverunreachable") ||
                apiNameLower.contains("displayservicedownmessage") || apiNameLower.contains("onauthservicefailure") ||
                apiNameLower.contains("retrofit.callback.onfailure") || apiNameLower.contains("volleyerror") ||
                apiNameLower.contains("sockettimeoutexception") || apiNameLower.contains("unknownhostexception") ||
                apiNameLower.contains("connectexception")) {
            return "ServiceUnavailable_Auth";
        }

        // Invalid credential state
        if (apiNameLower.contains("onloginfailure") || apiNameLower.contains("handleincorrectcredentials") ||
                apiNameLower.contains("displayauthenticationerror")
                || apiNameLower.contains("showinvaliduserorpassword") ||
                apiNameLower.contains("firebaseauthinvaliduserexception")
                || apiNameLower.contains("firebaseauthinvalidcredentialsexception") ||
                apiNameLower.contains("apiexception") || signatureLower.contains("401")
                || signatureLower.contains("403") ||
                signatureLower.contains("invalid_credentials") || signatureLower.contains("wrong_password")) {
            return "InvalidCredentials";
        }

        // Check MFA settings state
        if (apiNameLower.contains("ismfarequiredforuser") || apiNameLower.contains("fetchmfastatus") ||
                apiNameLower.contains("getuseraccountsettings") || apiNameLower.contains("checktwofactorstatus") ||
                apiNameLower.contains("accountfeatures.isfeatureenabled")
                || apiNameLower.contains("usersettings.getmfaenabled") ||
                signatureLower.contains("mfa") || signatureLower.contains("two_factor")
                || signatureLower.contains("2fa")) {
            return "CheckingMFASettings";
        }

        // No MFA login success state
        if (apiNameLower.contains("onloginsuccessmfanotrequired") || apiNameLower.contains("proceedtoappwithoutmfa") ||
                apiNameLower.contains("completeloginnottwofactor") || apiNameLower.contains("navigatetomainafterlogin")
                ||
                apiNameLower.contains("loginsuccesshandler.handle")
                || apiNameLower.contains("authsuccessmanager.processsuccess")) {
            return "LoggedIn_NoMFA";
        }

        // MFA code waiting state
        if (apiNameLower.contains("promptformfacode") || apiNameLower.contains("showotpinputscreen") ||
                apiNameLower.contains("navigatetomfaverificationpage") || apiNameLower.contains("displaymfaChallenge")
                ||
                apiNameLower.contains("mfaactivity.oncreate") || apiNameLower.contains("otpactivity.oncreate") ||
                apiNameLower.contains("twofactoractivity.oncreate")) {
            return "MFACodePending";
        }

        // Sending MFA code state
        if (apiNameLower.contains("sendmfacodeviasms") || apiNameLower.contains("dispatchotpemail") ||
                apiNameLower.contains("twofactorservice.requestverificationcode")
                || apiNameLower.contains("sendotptouser") ||
                apiNameLower.contains("smsmanager.sendtextmessage")
                || apiNameLower.contains("emailservice.sendotpemail") ||
                apiNameLower.contains("apiservice.requestmfacode") || apiNameLower.contains("mfaapi.sendcode")) {
            return "SendingMFACode";
        }

        // MFA send service unavailable state
        if (apiNameLower.contains("onmfacodesenderror") || apiNameLower.contains("handleotpdispatchfailure") ||
                apiNameLower.contains("displaymfaserviceerror_send") || apiNameLower.contains("mfasendfailed") ||
                apiNameLower.contains("mfasendexception") || apiNameLower.contains("otpsendexception")) {
            return "ServiceUnavailable_MFA_Send";
        }

        // MFA verification state
        if ((apiNameLower.contains("onclick")
                && (signatureLower.contains("verifymfabutton") || signatureLower.contains("submitotpbutton"))) ||
                apiNameLower.contains("submitmfatoken") || apiNameLower.contains("validateotpentered") ||
                apiNameLower.contains("confirmtwofactorauthentication")
                || apiNameLower.contains("mfaverificationusecase.execute")) {
            return "MFAVerification";
        }

        // Verify MFA state
        if (apiNameLower.contains("authservice.verifymfatoken") || apiNameLower.contains("mfarepository.checkotp") ||
                apiNameLower.contains("useraccount.confirmmfadevice") || apiNameLower.contains("verifytwofactorcode") ||
                apiNameLower.contains("apiservice.verifymfa") || apiNameLower.contains("mfaapi.verifycode") ||
                apiNameLower.contains("otpapi.validateotp")) {
            return "VerifyingMFA";
        }

        // MFA verification service unavailable state
        if (apiNameLower.contains("onmfaverificationerror")
                || apiNameLower.contains("handleotpvalidationerrorservicedown") ||
                apiNameLower.contains("displaymfaserviceerror_verify") || apiNameLower.contains("mfaverifyfailed") ||
                apiNameLower.contains("mfaverificationexception")
                || apiNameLower.contains("otpverificationexception")) {
            return "ServiceUnavailable_MFA_Verify";
        }

        // MFA error state
        if (apiNameLower.contains("oninvalidmfacode") || apiNameLower.contains("handleincorrectotp") ||
                apiNameLower.contains("displaymfaattemptfailed") || apiNameLower.contains("showtwofactorcodeerror") ||
                apiNameLower.contains("invalidmfacodeexception") || apiNameLower.contains("incorrectotpexception")) {
            return "MFAError";
        }

        // MFA login success state
        if (apiNameLower.contains("onmfaverificationsuccess") || apiNameLower.contains("completeloginwithmfa") ||
                apiNameLower.contains("navigatetohomeaftermfa") || apiNameLower.contains("loginsuccesswithmfa") ||
                apiNameLower.contains("mfasuccesshandler.handle")
                || apiNameLower.contains("twofactorsuccessmanager.processsuccess")) {
            return "LoggedIn_WithMFA";
        }

        // App main screen state
        if (apiNameLower.contains("navigatetodashboard") || apiNameLower.contains("showhomescreen") ||
                apiNameLower.contains("startappmainactivity") || apiNameLower.contains("onlogincompleteandverified") ||
                apiNameLower.contains("dashboardactivity.oncreate") || apiNameLower.contains("homeactivity.oncreate") ||
                apiNameLower.contains("mainnavigationmanager.navigate")) {
            return "AppMainScreen";
        }

        // User logout state
        if (apiNameLower.contains("performlogout") || apiNameLower.contains("signoutuser") ||
                apiNameLower.contains("clearsessionandlogout") || apiNameLower.contains("authmanager.logout") ||
                apiNameLower.contains("firebaseauth.signout") || apiNameLower.contains("googlesignin.signout") ||
                apiNameLower.contains("facebookloginmanager.logout")
                || apiNameLower.contains("logoutusecase.execute")) {
            return "UserLogout";
        }

        return "Unknown";
    }

    /**
     * Add observed state
     */
    public void addObservedState(String state) {
        if (state != null && !state.equals("Unknown")) {
            observedStateSequence.add(state);
            System.out.println(
                    "Add observed state: " + state + " (sequence: " + String.join(" -> ", observedStateSequence) + ")");
        }
    }

    /**
     * Validate state transitions
     */
    public List<String> validateStateTransitions() {
        List<String> errors = new ArrayList<>();

        if (observedStateSequence.size() < 2) {
            return errors; // At least two states are needed to validate transitions
        }

        for (int i = 0; i < observedStateSequence.size() - 1; i++) {
            String currentState = observedStateSequence.get(i);
            String nextState = observedStateSequence.get(i + 1);

            if (!isValidTransition(currentState, nextState)) {
                String error = String.format("Invalid state transition: %s -> %s", currentState, nextState);
                errors.add(error);
                System.err.println("State machine error: " + error);
            }
        }

        return errors;
    }

    /**
     * Check if state transition is valid
     */
    private boolean isValidTransition(String fromState, String toState) {
        List<String> validTransitions = validStateTransitions.get(fromState);
        if (validTransitions == null) {
            return false;
        }
        return validTransitions.contains(toState);
    }

    /**
     * Reset state sequence
     */
    public void resetStateSequence() {
        observedStateSequence.clear();
        System.out.println("State sequence reset");
    }

    /**
     * Get current state sequence
     */
    public List<String> getObservedStateSequence() {
        return new ArrayList<>(observedStateSequence);
    }

    /**
     * Add new state transition rule
     */
    public void addStateTransition(String fromState, String toState) {
        validStateTransitions.computeIfAbsent(fromState, k -> new ArrayList<>()).add(toState);
        System.out.println("Add state transition rule: " + fromState + " -> " + toState);
    }

    /**
     * Remove state transition rule
     */
    public void removeStateTransition(String fromState, String toState) {
        List<String> transitions = validStateTransitions.get(fromState);
        if (transitions != null) {
            transitions.remove(toState);
            System.out.println("Remove state transition rule: " + fromState + " -> " + toState);
        }
    }

    /**
     * Get all valid states
     */
    public Set<String> getAllStates() {
        return validStateTransitions.keySet();
    }

    /**
     * Get all valid transitions for a given state
     */
    public List<String> getValidTransitions(String state) {
        return validStateTransitions.getOrDefault(state, new ArrayList<>());
    }

    /**
     * Print state machine information
     */
    public void printStateMachine() {
        System.out.println("=== State machine information ===");
        for (Map.Entry<String, List<String>> entry : validStateTransitions.entrySet()) {
            System.out.println(entry.getKey() + " -> " + String.join(", ", entry.getValue()));
        }
        System.out.println("==================");
    }
}