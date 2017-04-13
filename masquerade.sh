#!/bin/sh

function checkprivileges() {
	if [ $EUID -ne 0 ] ; then
	clear
	#yaourt -Syu
	clear
	clear
echo -e "\e[0m
(òÓ,)_\,,/\e[32m I N S T A L L  A C C E S S  G R A N T E D

\033[m"
echo -e "\e[1;36m
W E L C O M E  T O  T H E                                  '||        
.. .. ..   ....   ....   ... ... ...  .... ... .. ....   .. ||  ....  
 || || || '' .|| ||. ' .'   ||||  ||.|...|| ||' ''' .||.'  '||.|...|| 
 || || || .|' || . '|..|.   ||||  ||||      ||   .|' |||.   ||||      
.|| || ||.'|..'|'|'..|''|..'||'|..'|.'|...'.||.  '|..'|'|..'||.'|...' 
                            ||                                  
                           ''''\033[m"
	sleep 2
installutilitiesandcoms
    else
    clear
        echo -e "\e[0m
┌∩┐(✖╭╮✖)┌∩┐\e[91m I N S T A L L  A C C E S S  D E N I E D
\e[93m             THIS SCRIPT CANNOT BE RUN IN ROOT
\033[m"
    echo -e "\e[1;36m
                                                           '||        
.. .. ..   ....   ....   ... ... ...  .... ... .. ....   .. ||  ....  
 || || || '' .|| ||. ' .'   ||||  ||.|...|| ||' ''' .||.'  '||.|...|| 
 || || || .|' || . '|..|.   ||||  ||||      ||   .|' |||.   ||||      
.|| || ||.'|..'|'|'..|''|..'||'|..'|.'|...'.||.  '|..'|'|..'||.'|...' 
                            ||                                     
                           ''''
                           
                           
                           
                           
                           
                           
                           
                           \033[m"
	fi
	exit 0 
}

function retrievefilesfromgit() {
if [ -d /tmp/masquerade ] ; then
	echo -e "\e[0m(òÓ,)_\,,/\e[32m resetting install path\033[m"
	rm -rf /tmp/masquerade
	sleep 3
	[ ! -d /tmp/masquerade ] && mkdir -p /tmp/masquerade 
else
[ ! -d /tmp/masquerade ] && mkdir -p /tmp/masquerade 
fi
echo -e "\e[0m(òÓ,)_\,,/\e[32m retreiving installation files\033[m"
	cd /tmp/masquerade
	git clone https://github.com/londondash/archVENOM.git /tmp/masquerade
}

function installutilitiesandcoms {
echo -e "\e[1;36m
U T I L I T Y  S O F T W A R E  I N S T A L L A T I O N

\e[1;37mthe following utility software packages will be installed;
   
    \e[1;36m#etcher #neofetch #crashplan #safecopy #grub-customizer #gksu
    #testdisk #veracrypt #bleachbit #catfish #messengerfordesktop-bin #ntp
	\033[m"

read -p $'\033[1;37mdo you want to install the utility software? '"$notexpanded"'(y/N) ' prompt
if [[ $prompt =~ [yY](es)* ]]
then
echo -e "\e[0m(òÓ,)_\,,/\e[32m installing utility software\033[m"
yaourt etcher
yaourt neofetch
yaourt crashplan
yaourt safecopy
yaourt grub-customizer
yaourt messengerfordesktop-bin
sudo pacman -S testdisk veracrypt bleachbit catfish gksu ntp
installmediasoftware
else
echo -e "\e[0m┌∩┐(✖╭╮✖)┌∩┐\e[91m skipping utility bundle installation\033[m"
installmediasoftware
fi
}

function installmediasoftware {
echo -e "\e[1;36m
M E D I A  S O F T W A R E  I N S T A L L A T I O N

\e[1;37mthe following media software packages will be installed;
   
    \e[1;36m#lmms #ardour #qjackctl #jack2 #ladspa  #audacity #blender 
     #clementine #kodi #k3b #recordmydesktop #vlc
	\033[m"

read -p $'\033[1;37mdo you want to install the media software? '"$notexpanded"'(y/N) ' prompt
if [[ $prompt =~ [yY](es)* ]]
then
echo -e "\e[0m(òÓ,)_\,,/\e[32m installing media software\033[m"
sudo pacman -S lmms ardour qjackctl jack2 ladspa audacity blender clementine kodi k3b recordmydesktop vlc
installgamesoftware
else
echo -e "\e[0m┌∩┐(✖╭╮✖)┌∩┐\e[91m skipping media bundle installation\033[m"
installgamesoftware
fi
}

function installgamesoftware {
echo -e "\e[1;36m
G A M E  S O F T W A R E  I N S T A L L A T I O N

\e[1;37mthe following game software packages will be installed;
   
    \e[1;36m#criticalmass #chromium b.s.u. #astromenace #gweled #hearts 
    #neverputt #pysolfc #supertuxkart #neverball
	\033[m"

read -p $'\033[1;37mdo you want to install the game software? '"$notexpanded"'(y/N) ' prompt
if [[ $prompt =~ [yY](es)* ]]
then
	echo -e "\e[0m(òÓ,)_\,,/\e[32m installing game software\033[m"
	sudo pacman -S astromenace chromium-bsu critter gweled gnome-hearts neverball pysolfc supertuxkart
	installhackingoftware	
else
	echo -e "\e[0m┌∩┐(✖╭╮✖)┌∩┐\e[91m skipping game bundle installation\033[m"
	installhackingoftware
fi
}

function installhackingoftware {
echo -e "\e[1;36m
H A C K I N G  S O F T W A R E  I N S T A L L A T I O N

\e[1;37mthe following hacking software packages will be installed;
   
    \e[1;36m#criticalmass #chromium b.s.u. #astromenace #gweled #hearts 
    #neverputt #pysolfc #supertuxkart #neverball
	\033[m"

read -p $'\033[1;37mdo you want to install the hacking software? '"$notexpanded"'(y/N) ' prompt
if [[ $prompt =~ [yY](es)* ]]
then

cd /tmp/masquerade/
	echo -e "\e[0m(òÓ,)_\,,/\e[32m installing hacking repository\033[m"
	curl -O https://blackarch.org/strap.sh
	sudo bash strap.sh
	yaourt -Syu

echo -e "\e[0m(òÓ,)_\,,/\e[32m installing hacking software\033[m"
#sudo pacman -S blackarch-anti-forensic blackarch-menus blackarch-automation blackarch-backdoor blackarch-binary blackarch-bluetooth blackarch-code-audit blackarch-cracker blackarch-crypto blackarch-database blackarch-debugger blackarch-decompiler blackarch-defensive blackarch-disassembler blackarch-dos
#blackarch-drone blackarch-exploitation
#sudo pacman -S blackarch-crypto --noconfirm
#sudo pacman -S blackarch-fingerprint --noconfirm
#sudo pacman -S blackarch-firmware --noconfirm
#sudo pacman -S blackarch-forensic --noconfirm
#sudo pacman -S blackarch-fuzzer --noconfirm
#sudo pacman -S blackarch-hardware --noconfirm
#sudo pacman -S blackarch-honeypot --noconfirm
#sudo pacman -S blackarch-keylogger --noconfirm
#sudo pacman -S blackarch-malware --noconfirm
#udo pacman -S blackarch-misc --noconfirm
#sudo pacman -S blackarch-mobile --noconfirm
#sudo pacman -S blackarch-networking --noconfirm
#sudo pacman -S blackarch-nfc --noconfirm
#sudo pacman -S blackarch-packer --noconfirm
#sudo pacman -S blackarch-proxy --noconfirm
#sudo pacman -S blackarch-recon --noconfirm
#sudo pacman -S blackarch-reversing --noconfirm
#sudo pacman -S blackarch-scanner --noconfirm
#sudo pacman -S blackarch-sniffer --noconfirm
#sudo pacman -S blackarch-socia --noconfirm
#sudo pacman -S blackarch-spoof --noconfirm
#sudo pacman -S blackarch-threat-model --noconfirm
#sudo pacman -S blackarch-tunnel --noconfirm
#sudo pacman -S blackarch-unpacker --noconfirm
#sudo pacman -S blackarch-voip --noconfirm
#sudo pacman -S blackarch-webapp --noconfirm
#sudo pacman -S blackarch-windows --noconfirm
#sudo pacman -S blackarch-wireless --noconfirm
configurearchlinux	
else
echo -e "\e[0m┌∩┐(✖╭╮✖)┌∩┐\e[91m skipping hacking bundle installation\033[m"
configurearchlinux
fi
}



function configurearchlinux {
echo -e "\e[1;36m
C O N F I G U R I N G  T H E  S Y S T E M\033[m"
retrievefilesfromgit
sleep 2

sudo sh /tmp/masquerade/masqueraderoot.sh

echo -e "\e[0m(òÓ,)_\,,/\e[32m configuring openbox\033[m"
	#mv ~/.config/openbox/autostart ~/.config/openbox/autostart.BU -i
	#mv /tmp/masquerade/autostart ~/.config//openbox/autostart
	
	#mv ~/.config/openbox/menu.xml ~/.config/openbox/menu.xml.BU -i
	#mv /tmp/masquerade/menu.xml ~/.config//openbox/menu.xml
	
	#mv ~/.config/openbox/rc.xml ~/.config/openbox/rc.xml.BU -i
	#mv /tmp/masquerade/rc.xml ~/.config//openbox/rc.xml
	
echo -e "\e[0m(òÓ,)_\,,/\e[32m configuring conky\033[m"
	#mv ~/.config/conky.conf ~/.config/conky.conf.BU -i
	#mv /tmp/masquerade/conky.conf ~/.config/conky.conf

echo -e "\e[0m(òÓ,)_\,,/\e[32m configuring tint2\033[m"
	#mv ~/.config/tint2/tint2rc ~/.config/tint2/tint2rc.BU -i
	#mv /tmp/masquerade/tint2rc ~/.config/tint2/tint2rc


echo -e "\e[0m(òÓ,)_\,,/\e[32m configuring bashrc\033[m"
	#mv ~/.bashrc ~/bashrc.BU -i
	#mv /tmp/masquerade/bashrc ~/.bashrc

echo -e "\e[0m(òÓ,)_\,,/\e[32m configuring plank\033[m"
	#mv ~/.config/plank/dock1/settings ~/.config/plank/dock1/settings.BU -i
	#mv /tmp/masquerade/settings ~/.config/plank/dock1/settings



echo -e "\e[0m(òÓ,)_\,,/\e[32m configuring light-lock\033[m"
echo -e "\e[0m(òÓ,)_\,,/\e[32m configuring grub\033[m"

	#mv /boot/grub/themes/Antergos-Default/background.png /boot/grub/themes/Antergos-Default/background.original.png -i
	#mv /tmp/masquerade/grubbackground.png /boot/grub/themes/Antergos-Default/background.png


systemcleanup
}

function systemcleanup() {
echo -e "\e[1;36m
C L E A N I N G  T H E  S Y S T E M\033[m"

echo -e "\e[0m(òÓ,)_\,,/\e[32m configuring your system\033[m"
}


 checkprivileges
