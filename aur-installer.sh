#!/usr/bin/env bash
#-------------------------------------------------------------------------
#  𝓐𝓻𝓬𝓱 𝓢𝓮𝓽𝓾𝓹
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "INSTALLING AUR SOFTWARE"
echo

PKGS=(

    # UTILITIES -----------------------------------------------------------

    'update-grub'                       # Updating grub config

    # COMMUNICATIONS ------------------------------------------------------

    'firefox-appmenu-bin'               # Firefox with Ubuntu patches

    # THEMES --------------------------------------------------------------

    'zsh-theme-powerlevel10k-git'       # Theme for ZSH
    'kvantum-qt5-git'                   # Kvantum Manager + Themes

    # FONTS -----------------------------------------------------------

    'ttf-google-sans'                   # Google Sans font
    'ttf-meslo-nerd-font-powerlevel10k' # Nerd Font for Powerlevel 10k
    'ttf-ms-fonts'                      # Microsoft Fonts

    # APPS ----------------------------------------------------------------

    'etcher-bin'                        # Balena-Etcher
    'liberica-jdk-8-full-bin'           # Java 8 for Minecraft
    'visual-studio-code-bin'            # Visual Studio Code

)


for PKG in "${PKGS[@]}"; do
    yay -S --noconfirm $PKG
done

echo
echo "Done!"
echo
