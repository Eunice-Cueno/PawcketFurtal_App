@echo off
echo Building PawCKet FurTal Debug APK...
echo.

REM Check if Java is installed
java -version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Java is not installed or not in PATH
    echo Please install JDK 17 or higher and add it to your PATH
    echo.
    echo You can download it from: https://adoptium.net/
    pause
    exit /b 1
)

echo Java found. Starting Gradle build...
echo.

REM Build the debug APK
call gradlew.bat assembleDebug

if %errorlevel% equ 0 (
    echo.
    echo ============================================
    echo BUILD SUCCESSFUL!
    echo ============================================
    echo.
    echo APK location: app\build\outputs\apk\debug\app-debug.apk
    echo.
    echo You can now install this APK on your Android device.
    echo.
) else (
    echo.
    echo ============================================
    echo BUILD FAILED!
    echo ============================================
    echo.
    echo Please check the error messages above.
    echo.
)

pause
