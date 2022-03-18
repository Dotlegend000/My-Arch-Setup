#!/usr/bin/env bash
#-------------------------------------------------------------------------
#  𝓐𝓻𝓬𝓱 𝓢𝓮𝓽𝓾𝓹
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(

    # SYSTEM --------------------------------------------------------------

    'gparted'               # Disk Management
    'linux-lts'             # Long term support kernel
    'mesa'                  # Graphics for Intel and AMD
    'thermald'              # For Intel CPUs
    'xf86-video-intel'      # Driver for intel
    'kdeplasma-addons'      # Dependency for KDE

    # TERMINAL UTILITIES --------------------------------------------------

    'curl'                    # Remote content retrieval
    'gufw'                    # Firewall manager
    'htop'                    # Process viewer
    'p7zip'                   # 7z compression program
    'unrar'                   # RAR compression program
    'unzip'                   # Zip compression program
    'wget'                    # Remote content retrieval
    'zip'                     # Zip compression program
    'zsh'                     # Interactive shell

    # GENERAL UTILITIES ---------------------------------------------------

    'aria2'                 # Plugin for uget
    'chromium'              # Web Browser
    'discord'               # Discord
    'kwalletmanager'        # Wallet Manager for KDE
    'obs-studio'            # OBS screen recorder
    'uget'                  # Download Manager

    # DEVELOPMENT ---------------------------------------------------------

    'clang'                 # C Lang compiler
    'cmake'                 # Cross-platform open-source make system
    'code'                  # Visual Studio Code
    'git'                   # Version control system
    'gcc'                   # C/C++ compiler
    'glibc'                 # C libraries
    'kwrite'                # Text editor
    'meld'                  # File/directory comparison
    'python'                # Scripting language

    # MEDIA ---------------------------------------------------------------

    'audacious'       # Music player
    'vlc'             # Video player

)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
