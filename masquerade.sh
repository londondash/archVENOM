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
	sleep 
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
    #testdisk #veracrypt #bleachbit #catfish #messengerfordesktop-bin
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
sudo pacman -S testdisk veracrypt bleachbit catfish gksu
installmediasoftware
else
echo -e "\e[0m┌∩┐(✖╭╮✖)┌∩┐\e[91mskipping utility bundle installation\033[m"
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
echo -e "\e[0m┌∩┐(✖╭╮✖)┌∩┐\e[91mskipping media bundle installation\033[m"
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
echo -e "\e[0m┌∩┐(✖╭╮✖)┌∩┐\e[91mskipping game bundle installation\033[m"
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
echo -e "\e[0m(òÓ,)_\,,/\e[32m installing hacking software\033[m"

	
installopenboxthemes	
else
echo -e "\e[0m┌∩┐(✖╭╮✖)┌∩┐\e[91mskipping hacking bundle installation\033[m"
installopenboxthemes
fi
}

function installopenboxthemes {
echo -e "\e[1;36m
O P E N B O X  T H E M E  I N S T A L L A T I O N

\e[1;37mthe following openbox themes will be installed;
   
    \e[1;36m#flatstudiodark #win10-colors #laza_dark #mythos #ygoreus
    #bproject #dyna_black #nightmare 
	\033[m"

read -p $'\033[1;37mdo you want to install the openbox themes? '"$notexpanded"'(y/N) ' prompt
if [[ $prompt =~ [yY](es)* ]]
then
echo -e "\e[0m(òÓ,)_\,,/\e[32m installing openbox themes\033[m"
#
configurearchlinux
else
echo -e "\e[0m┌∩┐(✖╭╮✖)┌∩┐\e[91mskipping openbox themes installation\033[m"
configurearchlinux
fi
}

function configurearchlinux {
echo -e "\e[1;36m
C O N F I G U R I N G  T H E  S Y S T E M\033[m"
retrievefilesfromgit

echo -e "\e[0m(òÓ,)_\,,/\e[32mi not afraid welcome to the masquerade\033[m"
sleep 5

sudo sh /tmp/masquerade/masqueraderoot.sh

echo -e "\e[0m(òÓ,)_\,,/\e[32mconfiguring openbox\033[m"
	#mv ~/.config/openbox/autostart ~/.config/openbox/autostart.BU -i
	#mv /tmp/masquerade/autostart ~/.config//openbox/autostart
	
	#mv ~/.config/openbox/menu.xml ~/.config/openbox/menu.xml.BU -i
	#mv /tmp/masquerade/menu.xml ~/.config//openbox/menu.xml
	
echo -e "\e[0m(òÓ,)_\,,/\e[32mconfiguring conky\033[m"
	#mv ~/.config/conky.conf ~/.config/conky.conf.BU -i
	#mv /tmp/masquerade/conky.conf ~/.config/conky.conf

echo -e "\e[0m(òÓ,)_\,,/\e[32mconfiguring tint2\033[m"
	#mv ~/.config/tint2/tint2rc ~/.config/tint2/tint2rc.BU -i
	#mv /tmp/masquerade/tint2rc ~/.config/tint2/tint2rc


echo -e "\e[0m(òÓ,)_\,,/\e[32mconfiguring bashrc\033[m"
	#mv ~/.bashrc ~/bashrc.BU -i
	#mv /tmp/masquerade/bashrc ~/.bashrc

echo -e "\e[0m(òÓ,)_\,,/\e[32mconfiguring plank\033[m"
	#mv ~/.config/plank/dock1/settings ~/.config/plank/dock1/settings.BU -i
	#mv /tmp/masquerade/settings ~/.config/plank/dock1/settings



echo -e "\e[0m(òÓ,)_\,,/\e[32mconfiguring light-lock\033[m"
echo -e "\e[0m(òÓ,)_\,,/\e[32mconfiguring grub\033[m"

	#mv /boot/grub/themes/Antergos-Default/background.png /boot/grub/themes/Antergos-Default/background.original.png -i
	#mv /tmp/masquerade/grubbackground.png /boot/grub/themes/Antergos-Default/background.png


echo -e "\e[0m(òÓ,)_\,,/\e[32mconfiguring gtk\033[m"

systemcleanup
}

function systemcleanup() {
echo -e "\e[1;36m
C L E A N I N G  T H E  S Y S T E M\033[m"

echo -e "\e[0m(òÓ,)_\,,/\e[32mconfiguring your system\033[m"
}


configurearchlinux
#checkprivileges
