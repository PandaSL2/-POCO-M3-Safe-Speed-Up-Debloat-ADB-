# 📱 POCO M3 Safe Speed-Up & Debloat (ADB)

A **safe, no-root, no-bootloader-unlock** ADB-based optimization and debloating script for **POCO M3 (MIUI)**.
Designed to **improve performance, reduce background load, remove ads & bloatware**, while keeping the system stable and OTA updates functional.

---

## ✨ Features

* No root required
* No bootloader unlock required
* Fully reversible
* Disables MIUI ads & analytics
* Removes safe system bloatware
* Improves UI smoothness
* Reduces RAM pressure
* Keeps core system apps intact

---

## ⚠️ Important Disclaimer

> This script **disables** system packages for **user 0 only** (does not uninstall them permanently).
>
> Use at your own risk.
> The author is **not responsible** for data loss, device issues, or misuse.
>
> **Always read the package list before running.**

---

## 📂 Repository Structure

```
poco-m3-speedup-debloat/
│
├── poco_m3_speedup_plus_debloat_SAFE.bat
├── README.md
└── LICENSE
```

---

## 🧰 Requirements

* POCO M3 running MIUI
* Windows 10 / 11
* ADB (Android Platform Tools)
* USB cable
* USB Debugging enabled

---

## 🔧 Setup Instructions

### 1️⃣ Enable USB Debugging on POCO M3

```
Settings → About phone → Tap "MIUI version" 7 times
Settings → Additional settings → Developer options → USB debugging
```

---

### 2️⃣ Install ADB on Windows

* Download **Android Platform Tools**
* Extract to a folder (example: `C:\adb`)
* Open Command Prompt inside that folder

---

### 3️⃣ Verify Device Connection

```bash
adb devices
```

You should see your device listed as `device`.

---

## ▶️ How to Run the Script

1. Download or clone this repository
2. Connect your phone via USB
3. Right-click:

   ```
   poco_m3_speedup_plus_debloat_SAFE.bat
   ```
4. Select **Run as Administrator**
5. Follow on-screen instructions
6. Phone will reboot automatically

---

## 🧹 What This Script Disables (Safe)

### MIUI Ads & Analytics

* `com.miui.analytics`
* `com.miui.msa.global`
* `com.miui.systemAdSolution`
* `com.miui.daemon`

### Xiaomi / MIUI Bloatware

* `com.miui.bugreport`
* `com.miui.hybrid`
* `com.miui.hybrid.accessory`
* `com.xiaomi.mipicks`
* `com.miui.player`
* `com.miui.weather2`
* `com.miui.cloudbackup`
* `com.miui.cloudservice`
* `com.miui.cloudservice.sysbase`
* `com.miui.yellowpage`
* `com.miui.micloudsync`

### Optional Google Apps

* `com.google.android.apps.tachyon`
* `com.google.android.music`
* `com.google.android.videos`
* `com.google.android.apps.docs`
* `com.google.android.apps.photos`

### Facebook System Apps

* `com.facebook.appmanager`
* `com.facebook.services`
* `com.facebook.system`

---

## 🚫 What It Does NOT Touch (Critical)

The script **intentionally avoids**:

* System UI
* Settings
* Phone / Telephony
* Google Play Services
* MIUI Launcher

This prevents bootloops and instability.

---

## 🔄 Reverting Changes

To re-enable any disabled app:

```bash
adb shell pm enable <package.name>
```

Example:

```bash
adb shell pm enable com.miui.analytics
```

---

## 🚀 Expected Improvements

* Faster UI response
* Less background activity
* Reduced RAM usage
* Fewer ads & telemetry
* Slight to moderate battery improvement

---

## 📌 Tested On

* POCO M3
* MIUI 12 / 12.5 / 13 (Global)

---

## 📝 License

**MIT License**
You are free to use, modify, and distribute this project with attribution.

---

## 🙌 Contributing

Pull requests and improvements are welcome.
If you add device-specific profiles, clearly label them.

---

## ⭐ Support

If this helped you:

* Star the repository ⭐
* Share responsibly
* Do not sell this script


