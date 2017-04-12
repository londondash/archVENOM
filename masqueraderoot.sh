#!/bin/sh
function movefilesinroot() {
	mv /tmp/masquerade/conkyrestart /bin
	chmod +x /bin/conkyrestart
	mv /tmp/masquerade/bashhelper.sh /bin
	chmod +x /bin/bashhelper.sh
	mv /tmp/masquerade/clamavscansystem.sh /bin
	chmod +x /bin/clamavscansystem.sh
	mv /tmp/masquerade/clamavupdate /bin
	chmod +x /bin//clamavupdate
	mv /tmp/masquerade/startconky /bin
	chmod +x /bin/startconky
	mv /tmp/masquerade/stopconky /bin
	chmod +x /bin/stopconky
	mv /tmp/masquerade/updateandscan /bin
	chmod +x /bin/updateandscan
}


movefilesinroot
