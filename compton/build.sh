#!/bin/bash
sudo apt-get install -y compton
#echo "opacity-rule = [\"85:class_g = \'gnome-terminal\'\"];" > ~/.config/compton.conf
#echo "for_window [class="^.*"] border pixel 2 #get rid of tittlebars because gaps doesnt work" >> ~/.config.compton.conf

ln -s `echo $PWD`/config ~/.config/compton.conf
