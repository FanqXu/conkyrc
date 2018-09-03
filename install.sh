#!/bin/bash

if [ ! -d "$HOME/.config/conky" ]
then
	mkdir -p $HOME/.config/conky
fi
cp ./arch_logo $HOME/config/conky
cp ./clock $HOME/config/conky
cp ./clock_rings.lua $HOME/config/conky
cp ./cpu $HOME/config/conky
cp ./disk $HOME/config/conky
cp ./network $HOME/config/conky
cp ./ram $HOME/config/conky
cp ./rings $HOME/config/conky
cp ./startconky.sh $HOME/config/conky

echo "~/.config/conky/startconky.sh &" >> $HOME/.xprofile

