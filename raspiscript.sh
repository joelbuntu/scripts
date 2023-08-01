#     _ ____ ___ 
#    | |  _ \_ _|
# _  | | |_) | | 
#| |_| |  __/| | 
# \___/|_|  |___| 1.0

echo -n "Greetings, $USER! Shall I install your scripts? (y/n): "
read -r answer
if $answer = "y"

then

echo "Downloading DOOM2.WAD"
#TODO: add DOOM.WAD
wget "https://archive.org/download/theultimatedoom_doom2_doom.wad/Doom%202.iso/DOOM2.WAD"
echo "Installing DOOM source ports"
sudo apt install crispy-doom chocolate-doom
echo "Creating doom directory in $HOME/Documents/"
cd $HOME; mkdir Documents/doom; mv DOOM2.WAD $HOME/Documents/doom
echo "Installing programs"
sudo apt install libreoffice micro
echo "overclocking PI400"
sudo chown root config.txt
sudo mv config.txt /boot/config.txt
fi

else
echo "Operation cancelled"
exit
fi

echo -n "All done! Shall I reboot now? (WARNING: ANY UNSAVED PROGRESS WILL BE LOST (y/n)):"
read -r bbq

if $bbq = "y"

then

reboot

fi
