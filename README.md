# WSL Ubuntu Dotfiles

This is a simple dotfiles and scripts to setup _Windows Subsystem for Linux (WSL)_ with _Ubuntu_.

## Features

_Check linked files to more details._

### Installation files

- [apps.sh](install/apps.sh) - installs applications.
- [dotfiles.sh](install/dotfiles.sh) - install and configure dotfiles.
- [npm.sh](install/npm.sh) - install npm packages.
- [setup.sh](install/setup.sh) - main installer.
- [utils.sh](install/utils.sh) - support functions for other installers.

### Settings Files

- [gitconfig](.gitconfig) - basic global git settings.
- [gitignore_global](.gitignore_global) - global gitignore.
- [vimrc](vimrc) - vim configuration and plugins
- [tmux.conf](tmux.conf) - tmux configuration

## Prerequisites

- Windows 10
- WSL (Windows Subsystem for Linux) with Ubuntu

## Installation

See SamuelRamox's [Windows 10 Setup Script](https://github.com/samuelramox/windows-setup) to configure `Windows 10`, install some apps and `WSL`. To use the script, just download and open it with `PowerShell`. If you use it, skip to step [Install dotfiles](#install-dotfiles).

### 1. Install WSL

If you do not already have `WSL`, open `Powershell` as an Administrator and run these commands:

```powershell
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform
```

Make WSL 2 your default architecture you can do so with this command:

```powershell
wsl --set-default-version 2
```

After restarting, install Ubuntu from the [Microsoft Store](https://aka.ms/wsl-ubuntu)

Launch `Ubuntu.exe` from the Start menu. 

### 2. Run the Setup Script

If you already have `Windows 10` and `WSL` installed, run these commands in `WSL`:

```bash
git clone https://github.com/stvhwrd/wsl-setup.git
chmod 700 wsl-setup/ -R
cd wsl-setup
./install/setup.sh
```

## Remote - WSL

Install the [Remote - WSL](https://aka.ms/vscode-remote/download/wsl) extension in VSCode to get a better experience with `WSL`.

## Reference

- [Windows Subsystem for Linux Installation Guide for Windows 10](https://aka.ms/wslinstall)
- [WSL 2](https://aka.ms/wsl2)
