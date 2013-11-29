openbox_playonlinux_pipemenu
============================

This is a small, neat pipemenu to throw into your openbox menu.xml to automatically map launchers for all of your PlayOnLinux games.

Installation is simple.  Throw this file anywhere accessible - for all users, /usr/local/bin will work.  For one user account, throw it in ~/bin/ or something preferably in your $PATH.

chmod a+x for all users, or chmod u+x for one user.

Open up your menu.xml (typically ~/.config/openbox/menu.xml) and add a menu selection:

<menu execute="<path/to/script>/openbox_playonlinux_pipemenu.sh" id="polmenu" label="Play On Linux"/>

Enjoy!
