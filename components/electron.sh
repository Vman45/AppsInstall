#!/bin/bash

source $(dirname "$0")/helpers/colors.sh

echo -e "$green Installing... $close_color" &&
npm i -g electron electron-packager &&

echo -e "$green Electron successfully installed $close_color"