#!/bin/bash
#	polmenu.sh - a playonlinux game launcher for openbox
#	initially created 2013 - Ryan Fantus
#
# path to your PlayOnLinux shortcuts folder, assumes $HOME/
pol_shortcuts_folder=.PlayOnLinux/shortcuts/

# command to launch playonlinux software
pol_launcher_command='playonlinux --run'

function generate_pol_menu {

ls ~/$pol_shortcuts_folder | while read; do

	echo '<item label="'"${REPLY}"'">'
	echo -n '<action name="Execute"><execute>'
	echo -n "$pol_launcher_command '${REPLY}'"
	echo '</execute></action>'
	echo '</item>'
   done

}

echo '<openbox_pipe_menu>'

# First, we'll create a launcher specifically for PlayOnLinux

echo '<item label="Play On Linux">'
echo -n '<action name="Execute"><execute>'
echo -n "playonlinux"
echo '</execute></action>'
echo '</item>'

generate_pol_menu

echo '</openbox_pipe_menu>'
