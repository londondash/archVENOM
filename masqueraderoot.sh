#!/bin/sh
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


	}


movefilesinroot
