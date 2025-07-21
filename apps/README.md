# APK Files Directory

Place your Android APK files in this directory for testing.

## Usage

1. Copy your APK file to this directory:

   ```
   cp /path/to/your/app.apk apps/
   ```

2. Update the configuration in `src/test/resources/config.properties`:

   ```properties
   app.path=/app/apps/your-app.apk
   app.package=com.yourcompany.yourapp
   app.activity=com.yourcompany.yourapp.MainActivity
   ```

## Notes

- APK files should be compatible with Android API level 31 (Android 12)
- Files will be copied into the Docker container at `/app/apps/`
- Ensure sufficient disk space for large APK files
