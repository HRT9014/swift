# A Guide to [Swift](https://getswift.xyz) Executor

## Contents:
-   [About Swift](#about-swift)
-   [Installation](#installation)
-   [Bug Fixes](#bug-fixes)
-   [Known Issues](#known-issues)
-   [Script Developer Info](#script-developer-info)

## **About Swift**
Swift is a multipurpose ROBLOX executor, created by 0xcoredumped. **sUNC: 97% | UNC: 96%**

**Official Website: https://getswift.xyz**\
**Official Discord: https://discord.gg/getswift**

## **Installation**

You **MUST** disable your anti-virus, otherwise required files may not be downloaded properly. See [Disable Anti-Virus](#disabling-anti-virus)

1. Join the [Swift Discord Server](https://discord.gg/getswift)
2. Download `swift-bootstrapper.exe` from #download-here
3. Once installed, double-click the bootstrapper file and wait for the files to copy.
4. All Set! Now you have Swift.exe installed. You will have to sign up.

### **Signing up**

1. Obtain a key from https://getswift.xyz/real/0/0/0/0. See [Loot-Labs Issues](#loot-labs-not-working) for troubleshooting.
2. Register with a **unique** username and password (make sure to remember the password!) and put your key in.
3. You now have access to the Swift Executor! Note: Swift keys only last for a day. You will have to get a new one whenever it expires.
4. (optional) In the discord server, run /linkdiscord to link your discord account to your swift account. This will help recovering your account.


### **Disabling Anti-Virus**
This assumes you have administrative privileges and do not have any other anti-virus software on your device besides Windows Defender.
1. Open **Windows Settings** 
2. Go to the **Privacy & Security** tab.
3. Go to **Windows Security**
4. Select **Virus & Threat Protection**
5. Under **Virus & Threat Protection Settings** click **Manage Settings**
6. Disable **Real-Time Protection**. You may need to input an admin password.
7. Scroll down and disable **Tamper Protection**. You may need to input an admin password.

Notes: 
- The bootstrapper does **not** require administrative privileges, so Standard Accounts can run it
- You will need to disable your Anti-Virus in order to install. Swift is completely safe to use. Anti-Virus scans show false-positives.
- For the decompiler, read the [**Script Developer Info**](#script-developer-info)

## **Bug Fixes**
### **The instance with the Selected PID doesn't exist**
This means that Swift cannot find the ROBLOX Executable.\
To fix this, click the ☁️ button at the bottom left of the Swift UI and select the current ROBLOX process.

### **Bloxstrap Issues**
Reinstall [Bloxstrap](https://github.com/bloxstraplabs/bloxstrap/releases/latest)


### **Screen Black when injected**
This is because of the C++ Drawing Library used by Swift.
1. Download blackscreenfix.bat [**here**](https://nullstate.net/blackscreenfix.bat)
2. Run `blackscreenfix.bat` normally. Do **not** run as Admin
3. Bloxstrap will be automatically installed. Follow the instructions to install it.
4. ROBLOX will not launch. Once you see a pop up on the `blackscreenfix.bat`, you can cancel Bloxstrap.
5. Launch ROBLOX with the Bloxstrap Launcher.

If this doesn't work, follow these instructions:
1. Search for "Roblox" in the start menu
2. Right Click & Open File Location.
3. Right Click on Roblox Player & Open File Location
4. Right Click on RobloxPlayerBeta -> Properties -> Compatibility
5. Check **Disable Fullscreen Optimizations** is enabled.

### **Injector.exe does not exist / Dll3.dll does not exist**
1. Ensure the anti-virus is turned **off**.
2. Delete all swift-related files (`bin`, `notbin`, `workspace`, `scripts`, `autoexec`, `swift-bootstrapper.exe`, `Swift.exe`)
3. Press Win+R and type `%localappdata%` and delete the Swift folder (if it exists)
4. Redownload the swift-bootstrapper.exe from #download-here in the main server.
5. Kill any background apps with Task Manager (edge, explorer, spotify) and then try inject again.

### **HTTP Error 403**
You must re-do the key system. Go to https://getswift.xyz/real/0/0/0/0

### **HTTP Error 400**
1. Ensure the anti-virus is turned **off**.
2. Delete all swift-related files (`bin`, `notbin`, `workspace`, `scripts`, `autoexec`, `swift-bootstrapper.exe`, `Swift.exe`)
3. Press Win+R and type `%localappdata%` and delete the Swift folder (if it exists)
4. Redownload the swift-bootstrapper.exe from #download-here in the main server.

### **You have been blocked by the owner (Website)**
This is a Cloudflare rate limit. Wait 2 minutes and retry. If the issue persists, contact a support staff.

### **Loot-Labs not working**
1. Disable your VPN
2. Disable Adblockers
3. Use Edge
4. Use Quad9 DNS (Watch the [**Tutorial**](https://youtube.com/watch?v=aujUl3yt6nM))
5. Clear your Browser Cache (Watch the [**Tutorial**](https://youtube.com/watch?v=5jdDSjH7FN0))

### **Cloudflare Captcha issue**
1. Use Edge
2. Open an InPrivate window (Ctrl+Shift+N)
3. Retry

### **VCRUNTIME140.DLL Not Found**
Install [**vc_redist.x64.exe**](https://aka.ms/vs/17/release/vc_redist.x64.exe)

### **.NET SDK 6.0.0 for Bloxstrap**
Install [**.NET SDK**](https://download.visualstudio.microsoft.com/download/pr/396abf58-60df-4892-b086-9ed9c7a914ba/eb344c08fa7fc303f46d6905a0cb4ea3/dotnet-sdk-6.0.428-win-x64.exe)

### **0x1 / auth.swift issues**
Delete `auth.swift` from the `bin` folder, then relaunch and login.

### **0x4 (Bad Request)**
1. Open Settings -> Time & Language -> Date & Time
2. Ensure **Set Time Automatically** is enabled.
3. Scroll down and click **Sync Now** under Additional Settings

### **/notbin missing**
1. Close Swift.
2. Create a folder called `Swift`
3. Move all Swift Files (`autoexec`, `bin`, `scripts`, `workspace`, `Swift.exe`) into the new folder
4. Create a new folder called `notbin` inside `Swift`
5. Drag the `swift_bootstrapper.exe` into the `Swift` folder and run it (You can get this from #download-here in the Discord Server.)

### **Status Code Not 200 (Roblox Version Error)**
Update ROBLOX or Download [**Bloxstrap**](https://github.com/bloxstraplabs/bloxstrap/releases/latest)

### **HWID Mismatch**
1. Use `/linkdiscord` in the Discord Server
2. Once done, run `/hwidreset`\
If the issue persists, create a Support Ticket.

### **Successfully Injected but says Not Injected**
1. Ensure the anti-virus is turned **off**.
2. Delete all swift-related files (`bin`, `notbin`, `workspace`, `scripts`, `autoexec`, `swift-bootstrapper.exe`, `Swift.exe`)
3. Press Win+R and type `%localappdata%` and delete the Swift folder (if it exists)
4. Redownload the swift-bootstrapper.exe from #download-here in the main server.
5. Kill any background apps with Task Manager (edge, explorer, spotify) and then try inject again.

### **VirtualProtectEX Error 487**
This is because the memory address was not found, or there was not enough space.
1. Ensure your windows is up-to-Date
2. Reinstall ROBLOX/Bloxstrap fully (must need bloxstrap)
3. Restart your PC
4. Launch Swift.exe as Administrator
5. Open bloxstrap and launch roblox.
6. Inject

### **Error Injecting DLL / Failed to open process**
1. Ensure the anti-virus is turned **off**.
2. Delete all swift-related files (`bin`, `notbin`, `workspace`, `scripts`, `autoexec`, `swift-bootstrapper.exe`, `Swift.exe`)
3. Press Win+R and type `%localappdata%` and delete the Swift folder (if it exists)
4. Redownload the swift-bootstrapper.exe from #download-here in the main server.
5. Run it as administrator
6. Kill any background apps with Task Manager (edge, explorer, spotify) and then try inject again.
7. If that doesn't work, see [**Not executing script**](#not-executing-script)

### **Not executing script**
1. Close ROBLOX and Swift
2. Install [**DepsInstaller**](https://cdn.discordapp.com/attachments/1238624510543003709/1330188217986580480/DepsInstaller.exe?ex=678d11d0&is=678bc050&hm=0cb99fc801bc22982f8562d9f4b601e3eaaec7b2343ef64e714f4922b3ce72fb&)
3. Run as Administrator
4. Wait for everything to download
5. Restart your PC when the prompt is shown
6. Open anti-virus settings, and make sure `real-time protection` and `tamper protection` are both **off**.
7. Launch Swift as administrator
8. Open the website version of Roblox and try attaching there.

## **Fix Issues with ONE FILE**
Use [**Swift_Fixes.exe**](https://cdn.discordapp.com/attachments/1330585690463010917/1330586203900219392/Swift_Fixes.exe?ex=678e8478&is=678d32f8&hm=396a989d02098187b0469f4e514bda38e6bb1662057b58b434abf9e8d5501ed6&) 
if you have don't have time, all the fixes are included here.

## **Known Issues**

### **Game Freezes on Teleport**
Currently being investigated

### **Constant Crashes**
Currently being investigated

## **Script Developer Info**
Swift documentation -> https://docs.getswift.xyz/api-reference

Swift does not have a built-in decompiler, so you will have to install the **lua-lifter.exe** file in #changelogs (Added in 0.3.9 / Dec 24 2024).

The following functions have not been found in the sUNC test.\
❌ WebSocket.connect\
❌ getconnections\
❌ getcallbackvalue

Data from [**voxlis.net**](https://voxlis.net/assets/unc/swift.json)

Guide made by HRT9014 | 109dg
