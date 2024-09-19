import java.util.Properties;
import java.util.regex.Pattern;
import java.io.InputStream;

public class ConfigLoader {
    private Properties properties;
    private Pattern usernamePattern;
    private Pattern passwordPattern;
    private Pattern loginButtonPattern;
    private Pattern loginActivityPattern;

    private Pattern NextButtonPattern;

    public ConfigLoader() {
        properties = new Properties();
        loadProperties();
        compilePatterns();
    }

    private void loadProperties() {
        try (InputStream input = getClass().getClassLoader().getResourceAsStream("element_identifiers.properties")) {
            properties.load(input);
        } catch (Exception e) {
            System.out.println("Unable to load properties: " + e.getMessage());
            e.printStackTrace();
        }
    }

    private void compilePatterns() {
        usernamePattern = Pattern.compile(properties.getProperty("usernameRegex"));
        passwordPattern = Pattern.compile(properties.getProperty("passwordRegex"));
        loginButtonPattern = Pattern.compile(properties.getProperty("loginButtonRegex"));
        loginActivityPattern = Pattern.compile(properties.getProperty("loginActivityPatterns"));
        NextButtonPattern = Pattern.compile(properties.getProperty("nextButtonPattern"));
    }

    public Pattern getUsernamePattern() {
        return usernamePattern;
    }

    public Pattern getPasswordPattern() {
        return passwordPattern;
    }

    public Pattern getLoginButtonPattern() {
        return loginButtonPattern;
    }

    public Pattern getLoginActivityPattern() {
        return loginActivityPattern;
    }

    public Pattern getNextButtonPattern() {
        return NextButtonPattern;
    }
}
