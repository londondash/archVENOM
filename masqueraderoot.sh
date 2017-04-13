#!/bin/sh

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
cd ~/silvanite-installer
wget https://dl.opendesktop.org/api/files/download/id/1474077709/FlatStudioDarkOB.tar.gz
	tar -C /usr/share/themes -xvf FlatStudioDarkOB.tar.gz
wget https://dl.opendesktop.org/api/files/download/id/1461053960/175856-Win10-Colors.zip
        unzip 175856-Win10-Colors.zip -d /usr/share/themes
wget https://dl.opendesktop.org/api/files/download/id/1460768282/175446-Laza_Dark.tar.gz
	tar -C /usr/share/themes -xvf 175446-Laza_Dark.tar.gz
wget https://dl.opendesktop.org/api/files/download/id/1460769207/88560-Mythos_OB.tar.gz
	tar -C /usr/share/themes -xvf 88560-Mythos_OB.tar.gz
wget https://dl.opendesktop.org/api/files/download/id/1460768229/166527-arch-theme.tar
	tar -C /usr/share/themes -xvf 166527-arch-theme.tar
wget https://dl.opendesktop.org/api/files/download/id/1460768465/167313-YgorEus.tar.gz
	tar -C /usr/share/themes -xvf 167313-YgorEus.tar.gz
wget https://dl.opendesktop.org/api/files/download/id/1460768472/167681-BProject.tar.gz
	tar -C /usr/share/themes -xvf 167681-BProject.tar.gz
wget https://dl.opendesktop.org/api/files/download/id/1460768450/163320-Dyna_Black.tar.gz
	tar -C /usr/share/themes -xvf 163320-Dyna_Black.tar.gz
wget https://dl.opendesktop.org/api/files/download/id/1460769078/165646-Nightmare.zip
         unzip 165646-Nightmare.zip -d /usr/share/themes
rm /usr/share/themes/Kurosaki.jpg
removeuglyobthemes
else
echo -e "\e[0m┌∩┐(✖╭╮✖)┌∩┐\e[91m skipping openbox themes installation\033[m"
removeuglyobthemes
fi
}

function removeuglyobthemes() {
	echo -e "\e[0m(òÓ,)_\,,/\e[32mremoving undesired themes\033[m"
	rm -rf /usr/share/themes/Artwiz-boxed
rm -rf /usr/share/themes/Bear2
rm -rf /usr/share/themes/Clearlooks
rm -rf /usr/share/themes/Clearlooks-3.4
rm -rf /usr/share/themes/Clearlooks-Olive
rm -rf /usr/share/themes/Mikachu
rm -rf /usr/share/themes/Numix-Frost-Light
rm -rf /usr/share/themes/Orang
rm -rf /usr/share/themes/Syscrash
rm -rf /usr/share/themes/ZOMG-PONIES!
rm -rf /usr/share/icons/Numix-Light
rm -rf /usr/share/icons/Numix-Square
rm -rf /usr/share/icons/Numix-Square-Light
removeunwantedsoftware
}

function removeunwantedsoftware() {
	echo -e "\e[0m(òÓ,)_\,,/\e[32mremoving undesired software\033[m"
	pacman -R xfburn pidgin transmission-gtk pragha gnome-mplayer galculator --noconfirm
	installwallpapers
}

function installwallpapers() {
	echo -e "\e[0m(òÓ,)_\,,/\e[32mcopying wallpapers\033[m"
rm -rf /usr/share/antergos/wallpapers
cp -r /tmp/masquerade/wallpapers /usr/share/antergos/

}


function movefilesinroot() {
	mv /tmp/masquerade/conkyrestart /bin/
	mv /tmp/masquerade/bashhelper.sh /bin/
	mv /tmp/masquerade/clamavscansystem.sh /bin/
	mv /tmp/masquerade/clamavupdate /bin/
	mv /tmp/masquerade/startconky /bin/
	mv /tmp/masquerade/stopconky /bin/
	mv /tmp/masquerade/updateandscan /bin/
	sleep 3
	chmod +x /bin/updateandscan
	chmod +x /bin/conkyrestart
	chmod +x /bin/bashhelper.sh
	chmod +x /bin/clamavscansystem.sh
	chmod +x /bin//clamavupdate
	chmod +x /bin/startconky
	chmod +x /bin/stopconky
					
echo -e "\e[0m(òÓ,)_\,,/\e[32mconfiguring os-release\033[m"
	mv /etc/os-release /etc/os-release.BU -i
	mv /tmp/masquerade/os-release /etc/os-release
	installopenboxthemes
	#removeuglyobthemes
	#removeunwantedsoftware
	}




movefilesinroot
