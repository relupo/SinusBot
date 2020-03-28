#!/bin/bash
# Colors
ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"
COL_RED=$ESC_SEQ"31;01m"
COL_GREEN=$ESC_SEQ"32;01m"
COL_YELLOW=$ESC_SEQ"33;01m"


echo -e "$COL_RED 
    Stop Bot  = off
    Start Bot = on
    restart Bot = reload
    Installation Bot = installare 
	$COL_RESET"

if [ "$1" = "reload" ] 
    then 
        service sinusbot restart
        echo -e "Info: $COL_GREEN SinusBot fatto reboot $COL_RESET"
    fi
if [ "$1" = "off" ] 
    then 
        service sinusbot stop
        echo -e "Info: $COL_GREEN stop è stato fermato 3.2.1.Go! $COL_RESET"
    fi	
if [ "$1" = "on" ] 
    then 
        systemctl start sinusbot
        echo -e "Info: $COL_GREEN Panel è stato fermato 3.2.1.Go! $COL_RESET"
    fi	
if [ "$1" = "installare" ] 
    then 
        bash <(wget -O - 'https://raw.githubusercontent.com/SinusBot/installer-linux/master/sinusbot_installer.sh')
        echo -e "Info: $COL_GREEN Panel è stato fermato 3.2.1.Go! $COL_RESET"
    fi