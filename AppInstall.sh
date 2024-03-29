#!/bin/bash

BASEDIR="$HOME/.local/share/AppInstall"
source $BASEDIR/components/helpers/colors.sh
source $BASEDIR/components/helpers/profile.sh

while true; do

options=$(dialog --stdout --separate-output --no-shadow \
	--checklist 'What are we going to install now?' \
	20 100 100  \
	1  "RVM + Rails + PostgreSql" 				off \
 	2  "New Rails Project with Template"  off \
	3  "Visual Code"  		 								off \
	4  "React Native CLI"  								off \
	5  "Git"   						 								off \
	6  "Electron"          								off \
	7  "NVM"     													off \
	8  "Ionic"   													off \
	9  "Nodejs"  													off \
	11 "Docker"   												off \
	10 "My ZSH "  												off \
	50 "Google Chrome"										off \
	51 "Telegram"													off \
	52 "Codecs and Extras"								off
)

# check if an option has been entered
if [ $? -eq 1 ]; then
	clear &&
	echo -e "$green \n \n BYE :) \n \n $close_color" &&
	exit 1;
fi

echo -e $options | while read OPTION
do
	case $OPTION in
		1) bash $BASEDIR/components/rails_rvm.sh;;

		2) bash $BASEDIR/components/rails_template.sh;;

		3) bash $BASEDIR/components/vscode.sh;;

		4) bash $BASEDIR/components/react_native.sh;;

		5) bash $BASEDIR/components/git.sh;;

		6) bash $BASEDIR/components/electron.sh;;

		7) bash $BASEDIR/components/nvm.sh;;

		8) bash $BASEDIR/components/ionic.sh;;

		9) bash $BASEDIR/components/node.sh;;

		10) bash $BASEDIR/components/zsh.sh;;

		11) bash $BASEDIR/components/docker.sh;;

		50) bash $BASEDIR/components/chrome.sh;;

		51) bash $BASEDIR/components/telegram.sh;;

		52) bash $BASEDIR/components/extras.sh;;

		*) dialog --title '✗ ERROR:' --msgbox 'Please enter a valid option!' 6 40;;
	esac

	dialog --title 'Success:' --msgbox 'All items successfully instaled!' 6 40
done
done

