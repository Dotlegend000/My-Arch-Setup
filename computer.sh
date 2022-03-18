#!/usr/bin/env bash
#-------------------------------------------------------------------------
#  𝓐𝓻𝓬𝓱 𝓢𝓮𝓽𝓾𝓹
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "INSTALLING DRIVERS"
echo

PKGS=(

    # DRIVERS -----------------------------------------------------------

    'bbswitch-dkms'                 # Hybrid graphic switch (Dependency for optimus-manager)
    'lib32-nvidia-390xx-utils'      # Nvidia driver 390 utilities (32 Bit)
    'lib32-virtualgl'               # Dependency for optimus-manager
    'nvidia-390xx-dkms'             # Nvidia driver 390 (DKMS Version)
    'nvidia-390xx-utils'            # Nvidia driver 390 utilities
    'optimus-manager'               # Optimus for Nvidia + Intel/AMD
    'optimus-manager-qt'            # Button for switching

)

for PKG in "${PKGS[@]}"; do
    yay -S --noconfirm $PKG
done

echo
echo "Done!"
echo
