#!/bin/bash


function IPADDER
{
read -p "Enter an IP address you wish to add to /etc/hosts: " IPADDRESS

}

function REIP()
{
read -p "Is $IPADDRESS the correct IP address [Y/N]" IPADDRESSCONFIRM

case $IPADDRESSCONFIRM in
	y|Y) 
	read -p 'What would you like to name this Ip address: ' Hostname 
	echo 'Adding ip address into hostname file'
	cd /etc
	sudo -- sh -c "echo $IPADDRESS		$Hostname >> /etc/hosts"

	;;
	
	n|N)
	IPADDER	
	;;
	
	*)
	echo 'That was not one of the options please select either Y/N'
	;;
	
	esac
}
IPADDER
REIP 
