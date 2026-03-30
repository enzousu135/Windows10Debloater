# 🚀 Windows 10 Debloater Revamped

[![PowerShell](https://img.shields.io/badge/PowerShell-5.1%2B-1f425f?style=flat-square&logo=powershell)](https://microsoft.com/PowerShell)
[![Windows Support](https://img.shields.io/badge/Windows-10%20(22H2)%20%2F%2011-0078d4?style=flat-square&logo=windows)](https://www.microsoft.com/windows)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)](https://opensource.org/licenses/MIT)
[![GitHub issues](https://img.shields.io/github/issues/Prathewsh/Windows10Debloater?style=flat-square)](https://github.com/Prathewsh/Windows10Debloater/issues)
[![GitHub forks](https://img.shields.io/github/forks/Prathewsh/Windows10Debloater?style=flat-square)](https://github.com/Prathewsh/Windows10Debloater/network)

---

### **Overview**
A comprehensive, safety-focused overhaul of the original [Windows10Debloater](https://github.com/Sycnex/Windows10Debloater). This revamped edition fixes critical execution bugs, introduces **Full Windows 10 22H2 & Windows 11 Support**, updates bloatware definitions for 2024-2026, and implements **mandatory safety checks** to ensure your system remains stable and your data stays protected.

---

### 💥 **Quick Start**
The fastest way to get started (GUI version):
Run PowerShell as Administrator and paste the following command:
```powershell
iwr -useb https://raw.githubusercontent.com/Prathewsh/Windows10Debloater/master/Windows10DebloaterGUI.ps1 | iex
```

---

> [!IMPORTANT]
> **Safety First**: As this tool is in active development, it has not been tested across every possible hardware configuration. **Please use it at your own risk; the author cannot be held responsible for unexpected system behavior.** We strongly advise reviewing the scripts and creating a **System Restore Point** before proceeding.

---

## 🛡️ **Safety and Stability Features**
To prevent system instability or data loss, this version includes:
- **Automatic System Restore Points**: Attempts to create a restore point before any changes.
- **System Protection Management**: Asks for permission to enable System Protection if it is currently disabled.
- **OneDrive Data Safety**: Stops sync before moving files and includes a mandatory check: if files cannot be moved, the original folder will **NOT** be deleted.
- **Whitelist Protection**: Newly discovered apps are **unchecked by default** in the Customize menu.
- **Error Logging**: Detailed logs are saved to `C:\Temp\Windows10Debloater\errors.log`.

---

## 📦 **Choose Your Version**
| Version | Best For... | File |
| :--- | :--- | :--- |
| **GUI App** | Most users; easy one-click buttons. | `Windows10DebloaterGUI.ps1` |
| **Interactive** | Users who want step-by-step console prompts. | `Windows10Debloater.ps1` |
| **Sysprep** | IT Admins; silent deployment/imaging. | `Windows10SysPrepDebloater.ps1` |

---

## 🚀 **How to Run**

### **Method 1: Manual Download (Recommended)**
1.  [Download the source code](https://github.com/Prathewsh/Windows10Debloater/archive/refs/heads/master.zip) and extract it.
2.  Open **PowerShell** as **Administrator**.
3.  Enable script execution: `Set-ExecutionPolicy Unrestricted -Force`
4.  Run: `.\Windows10DebloaterGUI.ps1`

### **Method 2: Right-Click**
Right-click any `.ps1` file and select **"Run with PowerShell"**.

---

## 🛠️ **Advanced Usage (Parameters)**
`Windows10SysPrepDebloater.ps1` supports these switches:
- **`-SysPrep`**: Runs `get-appxpackage | remove-appxpackage` first for provisioning.
- **`-Debloat`**: Runs `Start-Debloat`, `Remove-Keys`, and `Protect-Privacy`.
- **`-Privacy`**: Disables telemetry, unnecessary tasks, and Cortana search.

---

## 🗑️ **Bloatware Coverage**
This tool removes established bloatware and newly added modern apps.

<details>
<summary><b>Click to view full list of removed apps</b></summary>

### **Modern Apps (2024-2026)**
- Clipchamp, Microsoft Teams, Microsoft To Do, Power Automate, Cortana (Standalone), Disney+, Spotify, Xbox Gaming App, Phone Link.

### **Original Bloatware List**
- [3DBuilder](https://www.microsoft.com/en-us/p/3d-builder/9wzdncrfj3t6), [ActiproSoftware](https://www.microsoft.com/en-us/p/actipro-universal-windows-controls/9wzdncrdlvzp), [Alarms](https://www.microsoft.com/en-us/p/windows-alarms-clock/9wzdncrfj3pr?activetab=pivot:overviewtab), [Appconnector](https://www.microsoft.com/en-us/p/connector/9wzdncrdjmlj?activetab=pivot:overviewtab), [Asphalt8](https://www.microsoft.com/en-us/p/asphalt-8-racing-game-drive-drift-at-real-speed/9wzdncrfj26j?activetab=pivot:overviewtab), [Autodesk SketchBook](https://www.microsoft.com/en-us/p/autodesk-sketchbook/9nblggh4vzw5), [MSN Money](https://www.microsoft.com/en-us/p/msn-money/9wzdncrfhv4v?activetab=pivot:overviewtab), [Food And Drink](https://www.microsoft.com/en-us/p/food-and-drink/9nblggh0jhqg), [Health And Fitness](https://www.microsoft.com/en-us/p/health-fitness-free/9wzdncrcwcdp), [Microsoft News](https://www.microsoft.com/en-us/p/microsoft-news/9wzdncrfhvfw#activetab=pivot:overviewtab), [MSN Sports](https://www.microsoft.com/en-us/p/msn-sports/9wzdncrfhvh4?activetab=pivot:overviewtab), [MSN Travel](https://www.microsoft.com/en-us/p/msn-travel/9wzdncrfj3ft?activetab=pivot:overviewtab), [MSN Weather](https://www.microsoft.com/en-us/p/msn-weather/9wzdncrfj3q2?activetab=pivot:overviewtab), BioEnrollment, [Windows Camera](https://www.microsoft.com/en-us/p/windows-camera/9wzdncrfjbbg#activetab=pivot:overviewtab), CandyCrush, CandyCrushSoda, Caesars Slots Free Casino, ContactSupport, CyberLink MediaSuite Essentials, DrawboardPDF, Duolingo, EclipseManager, Facebook, FarmVille 2 Country Escape, Flipboard, Fresh Paint, Get started, iHeartRadio, King apps, Maps, March of Empires, Messaging, Microsoft Office Hub, Microsoft Solitaire Collection, Microsoft Sticky Notes, Minecraft, Netflix, Network Speed Test, NYT Crossword, Office Sway, OneNote, OneConnect, Pandora, People, Phone, Phototastic Collage, PicsArt-PhotoStudio, PowerBI, Royal Revolt 2, Shazam, Skype for Desktop, SoundRecorder, TuneInRadio, Twitter, Windows communications apps, Windows Feedback, Windows Feedback Hub, Windows Reading List, XboxApp, Xbox Game CallableUI, Xbox Identity Provider, Zune Music, Zune Video, Mixed Reality Portal, Paint 3D, 3D Viewer.
</details>

---

## 📝 **Detailed Changelog (Revamped Fork)**

<details>
<summary><b>Click to view all technical improvements and bug fixes</b></summary>

### **Critical Bug Fixes**
- **Fixed crash-causing undefined functions** — `DisableDiagTrack` and `DisableWAPPush` were called but never defined, causing the interactive script to crash mid-execution.
- **Fixed broken OneDrive uninstall** — the `UninstallOneDrive` function had ~80 lines of duplicated/nested code that ran the uninstall twice.
- **Fixed broken regex whitelist** — backticks inside single-quoted strings silently prevented apps like `Microsoft.XboxGameCallableUI` and `Microsoft.HEIFImageExtension` from being whitelisted.
- **Fixed `Stop-Process` syntax** — `Stop-Process Explorer.exe` was treating the name as a process ID; corrected to `Stop-Process -Name Explorer -Force`.
- **Fixed `New-PSDrive` inside array** — in the GUI script, `New-PSDrive` was accidentally placed inside a `$Keys` array literal.
- **Fixed SysPrep switch parameters** — the script was ignoring `-Debloat`, `-SysPrep`, and `-Privacy` switches and always running everything.
- **Added missing `-Privacy` parameter** — documented in original README but never declared.
- **Fixed allowlist/blocklist conflicts** — Xbox apps were in both lists simultaneously.
- **Fixed `FixWhitelistedApps`** — `Select-Object` was used incorrectly and never actually checked if apps were installed.
- **Fixed SysPrep and PXE Boot failures** — Stopped the script from disabling the `DmClient` scheduled task and forcefully stopping `dmwappushservice`.
- **Fixed Minecraft/Xbox sign-in issues** — Stopped the script from disabling the `XblGameSaveTask` scheduled task.
- **Fixed missing Toast Notifications and Screen Snip** — Removed the `NoTileApplicationNotification` registry override.
- **Fixed OEM app removals (Acer, HP, Lenovo, etc.)** — Added OEM vendor wildcards to the Protected/NonRemovable lists so critical proprietary functionality is no longer broken.
- **Fixed Unpin Start feature** — Removed the broken `StartMenuLayout.xml` method and replaced it with a much safer and fully working `CloudStore` registry wipe.
- **Fixed Customize GUI** — Resolved "not ticking" checkbox issue and added Select/Deselect All buttons.
</details>

<details>
<summary><b>Click to view new features and support</b></summary>

### **New Features Supported**
- **Full Windows 10 22H2 Support** — Optimized all telemetry and bloatware removal tasks specifically for the latest Windows 10 builds.
- **Windows Update Management** — Added the ability to completely disable or re-enable Windows Update services (`wuauserv`, `WaaSMedicSvc`, `UsoSvc`) automatically via Individual Scripts, the interactive console prompt, or the new dedicated buttons in the GUI.
- **Bing Search (22H2 Fix)** — Uses `DisableSearchBoxSuggestions` (the `BingSearchEnabled` key is ignored on 22H2).
- **Telemetry tasks**: Disables `Microsoft Compatibility Appraiser`, `ProgramDataUpdater`, and `Proxy` (Application Experience tasks).
- **Services**: Properly stops and disables both `DiagTrack` and `dmwappushservice` in all scripts.
- **Removed obsolete Wi-Fi Sense code** — Wi-Fi Sense was removed in Windows 10 version 1607 (2016).
</details>

---

## 🙌 **Credits & Contributors**
Original project: [Sycnex/Windows10Debloater](https://github.com/Sycnex/Windows10Debloater).

Special thanks to the original contributors for the suggestions, code, and fixes:
**a60wattfish, abulgatz, xsisbest, Damian, Vikingat-RAGE, /u/GavinEke**, and everyone listed [here](https://github.com/Sycnex/Windows10Debloater/graphs/contributors).

---
🧪 **Testers welcome!** If you encounter any issues, please [open an issue](https://github.com/Prathewsh/Windows10Debloater/issues).
