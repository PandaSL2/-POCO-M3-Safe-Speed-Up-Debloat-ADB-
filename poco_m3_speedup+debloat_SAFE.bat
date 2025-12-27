@echo off
title POCO M3 SAFE Speed-Up + Debloat (ADB)
echo =====================================================
echo  POCO M3 SAFE SPEED-UP + SYSTEM DEBLOAT (NO ROOT)
echo =====================================================
echo.

:: Check ADB connection
echo Checking device connection...
adb devices
echo.
pause

:: -----------------------------
:: UI SPEED TWEAKS
:: -----------------------------
echo Applying UI animation tweaks (0.5x)...
adb shell settings put global window_animation_scale 0.5
adb shell settings put global transition_animation_scale 0.5
adb shell settings put global animator_duration_scale 0.5

:: -----------------------------
:: MIUI ADS / ANALYTICS (SAFE)
:: -----------------------------
echo Disabling MIUI ads & analytics...
adb shell pm disable-user --user 0 com.miui.analytics
adb shell pm disable-user --user 0 com.miui.msa.global
adb shell pm disable-user --user 0 com.miui.systemAdSolution
adb shell pm disable-user --user 0 com.miui.daemon

:: -----------------------------
:: SAFE MIUI / XIAOMI BLOAT
:: -----------------------------
echo Disabling safe MIUI/Xiaomi bloatware...
adb shell pm disable-user --user 0 com.miui.bugreport
adb shell pm disable-user --user 0 com.miui.hybrid
adb shell pm disable-user --user 0 com.miui.hybrid.accessory
adb shell pm disable-user --user 0 com.xiaomi.mipicks
adb shell pm disable-user --user 0 com.miui.player
adb shell pm disable-user --user 0 com.miui.weather2
adb shell pm disable-user --user 0 com.miui.cloudbackup
adb shell pm disable-user --user 0 com.miui.cloudservice
adb shell pm disable-user --user 0 com.miui.cloudservice.sysbase
adb shell pm disable-user --user 0 com.miui.yellowpage
adb shell pm disable-user --user 0 com.miui.micloudsync

:: -----------------------------
:: GOOGLE BLOAT (OPTIONAL SAFE)
:: (Disable only if you don't use them)
:: -----------------------------
echo Disabling optional Google bloat (safe)...
adb shell pm disable-user --user 0 com.google.android.apps.tachyon
adb shell pm disable-user --user 0 com.google.android.music
adb shell pm disable-user --user 0 com.google.android.videos
adb shell pm disable-user --user 0 com.google.android.apps.docs
adb shell pm disable-user --user 0 com.google.android.apps.photos

:: -----------------------------
:: FACEBOOK PRE-INSTALLS
:: -----------------------------
echo Disabling Facebook system apps...
adb shell pm disable-user --user 0 com.facebook.appmanager
adb shell pm disable-user --user 0 com.facebook.services
adb shell pm disable-user --user 0 com.facebook.system

:: -----------------------------
:: PERFORMANCE / RAM OPTIMIZATION
:: -----------------------------
echo Optimizing background processes...
adb shell settings put global background_process_limit 2

echo Enabling cached apps freezer...
adb shell settings put global cached_apps_freezer enabled

echo Improving touch responsiveness...
adb shell settings put secure long_press_timeout 400

:: -----------------------------
:: DOZE (TEMPORARY BOOST)
:: -----------------------------
echo Applying Doze idle optimization...
adb shell dumpsys deviceidle force-idle

echo.
echo =====================================================
echo  ALL SAFE SPEED + DEBLOAT TWEAKS APPLIED SUCCESSFULLY
echo =====================================================
echo Rebooting device in 10 seconds...
timeout /t 10

adb reboot
exit
