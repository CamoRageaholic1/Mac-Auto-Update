# Mac Auto Update

![macOS](https://img.shields.io/badge/macOS-000000?style=for-the-badge&logo=apple&logoColor=white)
![Shell](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

Automated update checker for macOS that consolidates system, Homebrew, and Python package updates into a single command.

## 🎯 Purpose

Simplify macOS maintenance by checking for all available updates in one go - system updates, Homebrew packages, and Python packages - saving time and ensuring nothing gets missed.

## ✨ Features

- ✅ **Homebrew Updates** - Checks and updates Homebrew packages
- ✅ **Python Package Check** - Lists outdated pip packages
- ✅ **macOS System Updates** - Checks for available system updates
- ✅ **Single Command** - Run all checks with one command
- ✅ **Reminders** - Prompts for App Store and firmware updates

## 🚀 Quick Start

### Prerequisites

- macOS with Zsh shell (default on modern macOS)
- Homebrew installed (optional but recommended)
- Python with pip (optional, for Python package checks)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/CamoRageaholic1/Mac-Auto-Update.git
   cd Mac-Auto-Update
   ```

2. **Make the script executable**
   ```bash
   chmod +x check_updates.sh
   ```

3. **Add to your shell configuration**
   ```bash
   # Open your .zshrc file
   nano ~/.zshrc
   
   # Add this line at the end
   alias check_updates='~/path/to/Mac-Auto-Update/check_updates.sh'
   
   # Save (Ctrl + O) and exit (Ctrl + X)
   ```

4. **Reload your shell**
   ```bash
   source ~/.zshrc
   ```

### Usage

Simply run the command in your terminal:

```bash
check_updates
```

## 📋 What It Checks

The script performs the following checks:

| Check | Command | Description |
|-------|---------|-------------|
| **Homebrew** | `brew update && brew upgrade` | Updates Homebrew and all packages |
| **Python Packages** | `pip list --outdated` | Lists outdated Python packages |
| **macOS System** | `softwareupdate -l` | Lists available system updates |

**Manual Reminders:**
- Mac App Store applications
- Third-party apps not managed by Homebrew
- Firmware updates in System Preferences

## 📊 Example Output

```bash
$ check_updates

Checking for Homebrew Updates...
==> Updating Homebrew...
Updated 2 taps (homebrew/core and homebrew/cask).
==> Upgrading 3 outdated packages:
node 18.0.0 -> 20.0.0
python 3.10.0 -> 3.11.0
git 2.38.0 -> 2.40.0

Checking for outdated Python packages...
Package    Version  Latest
---------- -------- -------
requests   2.28.0   2.31.0
numpy      1.23.0   1.24.0

Checking for macOS System Updates...
Software Update Tool
Finding available software
Software Update found the following new or updated software:
* macOS Sequoia 15.1-23B42

Remember to check for updates in the Mac App Store.
Remember to check for updates to third-party applications.
Remember to check for any firmware updates in System Preferences.
```

## 🔧 Customization

### Add More Package Managers

Edit `check_updates.sh` to add checks for other package managers:

```bash
# Node.js packages
echo "Checking for outdated npm packages..."
npm outdated -g

# Ruby gems
echo "Checking for outdated gems..."
gem outdated
```

### Automatic Installation

To automatically install updates (use with caution):

```bash
# Auto-upgrade Homebrew packages
brew update && brew upgrade --auto-update

# Auto-update pip packages
pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip install -U
```

## ⚠️ Important Notes

- **Homebrew required** for Homebrew checks (install from [brew.sh](https://brew.sh))
- **Python required** for pip checks (usually pre-installed on macOS)
- **System updates** may require administrator password
- **Always review** updates before installing

## 🛠️ Troubleshooting

### "command not found: brew"
Install Homebrew:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### "command not found: pip"
Install pip:
```bash
python3 -m ensurepip --upgrade
```

### Script doesn't run
Ensure it's executable:
```bash
chmod +x check_updates.sh
```

## 📁 Project Structure

```
Mac-Auto-Update/
├── check_updates.sh    # Main update checker script
├── README.md           # This file
└── LICENSE             # MIT License
```

## 🤝 Contributing

Contributions welcome! Ideas for improvements:

- Add support for more package managers
- Create GUI version
- Add scheduling/automation
- Implement update notifications
- Create installation script

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📫 Support

- 🐛 **Bug Reports:** Open an issue on GitHub
- 💡 **Feature Requests:** Open an issue with the "enhancement" label

---

**Author:** David Osisek (CamoZeroDay)  
**Made with ❤️ for efficient macOS maintenance**
