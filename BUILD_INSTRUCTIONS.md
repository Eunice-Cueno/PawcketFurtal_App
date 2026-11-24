# PawCKet FurTal - Build Instructions

## Building the APK

### Option 1: Using Android Studio (Recommended)

1. **Install Android Studio**
   - Download from: https://developer.android.com/studio
   - Install with default settings

2. **Open the Project**
   - File → Open
   - Navigate to: `C:\Users\eunic\Downloads\PawcketFurtal~\PawcketFurtal`
   - Click OK

3. **Wait for Gradle Sync**
   - Android Studio will automatically sync the project
   - Wait for the sync to complete (bottom progress bar)

4. **Build the APK**
   - Build → Build Bundle(s) / APK(s) → Build APK(s)
   - Wait for the build to complete

5. **Locate the APK**
   - A notification will appear when build is complete
   - Click "locate" to find the APK
   - Location: `app\build\outputs\apk\debug\app-debug.apk`

### Option 2: Using Command Line (Requires Java)

1. **Install JDK 17 or higher**
   - Download from: https://adoptium.net/
   - Install and add to PATH

2. **Build using the provided script**
   - Double-click `build-apk.bat`
   - Or run in terminal: `gradlew.bat assembleDebug`

3. **Locate the APK**
   - `app\build\outputs\apk\debug\app-debug.apk`

### Option 3: Using GitHub Actions (Automatic)

1. **Push your changes to GitHub** (already done)

2. **Trigger the workflow**
   - Go to your GitHub repository
   - Click "Actions" tab
   - Select "Build Debug APK" workflow
   - Click "Run workflow" → "Run workflow"

3. **Download the APK**
   - Wait for the build to complete
   - Click on the completed workflow run
   - Scroll down to "Artifacts"
   - Download "app-debug-apk"

## Installing the APK

### On Android Device

1. **Enable Unknown Sources**
   - Settings → Security → Unknown Sources (toggle ON)
   - Or: Settings → Apps & notifications → Special app access → Install unknown apps

2. **Transfer APK to Device**
   - Via USB cable, email, or cloud storage

3. **Install**
   - Tap the APK file
   - Follow the on-screen prompts

### On Android Emulator

1. **Start Emulator**
   - In Android Studio: Tools → Device Manager → Start emulator

2. **Install APK**
   - Drag and drop APK onto the emulator
   - Or use: `adb install app-debug\outputs\apk\debug\app-debug.apk`

## Recent Updates

- ✅ Fixed app launcher icons (added all density folders)
- ✅ Added CALL_PHONE and SEND_SMS permissions
- ✅ Implemented adoption tracking system
- ✅ Added notification center
- ✅ Implemented in-app messaging
- ✅ Fixed all merge conflicts
- ✅ Added GitHub Actions workflow for automatic builds

## Troubleshooting

**Build fails with "Java not found"**
- Install JDK 17 from https://adoptium.net/
- Set JAVA_HOME environment variable
- Add Java bin directory to PATH

**APK won't install**
- Enable "Install from unknown sources" in phone settings
- Check Android version compatibility (minSdk 24, Android 7.0+)
- Ensure sufficient storage space on device

**App icon not showing**
- This has been fixed with the latest icon updates
- Rebuild the APK to get the updated icons

## Project Structure

```
PawcketFurtal/
├── app/
│   ├── src/main/
│   │   ├── java/com/pawcket/furtal/
│   │   │   ├── MainActivity.kt (Main app code)
│   │   │   └── Data.kt (Data models and ViewModel)
│   │   ├── res/
│   │   │   ├── drawable/ (Images including logo.png)
│   │   │   ├── mipmap-*/ (Launcher icons for all densities)
│   │   │   └── values/ (Resources)
│   │   └── AndroidManifest.xml (App configuration)
│   └── build.gradle.kts (Build configuration)
├── build-apk.bat (Quick build script)
└── .github/workflows/build-apk.yml (GitHub Actions workflow)
```
