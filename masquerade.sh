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
	[ ! -d /tmp/masquerade ] && mkdir -p /tmp/masquerade && echo -e "\e[0m(òÓ,)_\,,/retieving masquerade repository\e[32m\e[0m"
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


sudo sh tmp/masquerade/masqueraderoot.sh



echo -e "\e[0m(òÓ,)_\,,/\e[32mconfiguring openbox\033[m"
	mv ~/.config/openbox/autostart ~/.config/openbox/autostart.BU -i
	mv /tmp/masquerade/autostart ~/.config//openbox/autostart
	
	mv ~/.config/openbox/menu.xml ~/.config/openbox/menu.xml.BU -i
	mv /tmp/masquerade/menu.xml ~/.config//openbox/menu.xml
	
echo -e "\e[0m(òÓ,)_\,,/\e[32mconfiguring conky\033[m"
	mv ~/.config/conky.conf ~/.config/conky.conf.silvaniteBU -i
	#cd /tmp/masquerade
	mv /tmp/masquerade/conky.conf ~/.config/conky.conf

	





echo -e "\e[0m(òÓ,)_\,,/\e[32mconfiguring tint2\033[m"
echo -e "\e[0m(òÓ,)_\,,/\e[32mconfiguring bashrc\033[m"
echo -e "\e[0m(òÓ,)_\,,/\e[32mconfiguring plank\033[m"
echo -e "\e[0m(òÓ,)_\,,/\e[32mconfiguring light-lock\033[m"
echo -e "\e[0m(òÓ,)_\,,/\e[32mconfiguring grub\033[m"
echo -e "\e[0m(òÓ,)_\,,/\e[32mconfiguring gtk\033[m"

systemcleanup
}

function systemcleanup() {
echo -e "\e[1;36m
C L E A N I N G  T H E  S Y S T E M\033[m"

echo -e "\e[0m(òÓ,)_\,,/\e[32mconfiguring your system\033[m"
}



checkprivileges
