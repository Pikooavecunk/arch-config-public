#!/bin/bash

#AUTHOR: ABDELRHMAN NILE (PIRATE)
#github: https://github.com/AbdelrhmanNile

# this script WILL NOT WORK if you don't have feh and rofi, please install them first
#
dir="/home/$USER/Documents/wallpaper/" # wallpapers folder, change it to yours, make sure that it ends with a /
cd $dir
wallpaper="none is selected" 
set="swaybg -i"
view="swaybg"
startup_config_file="/home/$USER/.config/hypr/hyprland.conf" #change this to whatever config file that sets your wallpaper on startup, this file will get modified if you choose tp set a wallpaper permanantly 

########################-FUNCTION FOR SELECTING A WALLPAPER-###################
selectpic(){
    wallpaper=$(ls $dir | rofi -dmenu -p "select a wallpaper: ($wallpaper)")

    if [[ $wallpaper == "q" || $wallpaper == "" ]]; then
        exit 
    else
        set_wall
    fi
}
###############################################################################

#########################-FUNCTION FOR TAKING AN ACTION ON THE SELECTED WALLPAPER-#########################
action(){
  whattodo=$(echo -e "Set wallpaper" | rofi -dmenu -p "whatcha wanna do with it? ($wallpaper)")
    if [[ $whattodo == "Set wallpaper" ]]; then
        set_wall
    fi
}
#############################################################################################################

########-FUNCTION TO SET THE SELECTED WALLPAPER, BUT IT IS NOT PERMANANT, THE CHANGE WILL BE UNDONE AFTER LOGOUT OR REBOOT-#######
set_wall(){
    $set $wallpaper && killall swaybg &
}
###################################################################################################################################

####################-FUNCTION TO VIEW THE WALLPAPER-######################
###########################################################################

##############-FUNCTION TO PROMPT THE USER AFTER VIEWING THE WALLPAPER-#######################
################################################################################################

#########-FUNCTION TO SET THE WALLPAPER permanantly, IT WILL MODIFY YOUR START UP CONFIG FILE-###########
#########################################################################################################

###################-MAIN-####################
selectpic

