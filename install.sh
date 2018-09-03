#!/bin/bash

if [ ! -d "$HOME/.config/conky" ]
then
	mkdir -p $HOME/.config/conky
fi
cp ./arch_logo $HOME/.config/conky
echo "copying arch_logo to $HOME/.config/conky"
cp ./clock $HOME/.config/conky
echo "copying clock to $HOME/.config/conky"
cp ./clock_rings.lua $HOME/.config/conky
echo "copying clock_rings.lua to $HOME/.config/conky"
cp ./cpu $HOME/.config/conky
echo "copying cpu to $HOME/.config/conky"
cp ./disk $HOME/.config/conky
echo "copying disk to $HOME/.config/conky"
cp ./network $HOME/.config/conky
echo "copying network to $HOME/.config/conky"
cp ./ram $HOME/.config/conky
echo "copying ram to $HOME/.config/conky"
cp ./rings $HOME/.config/conky
echo "copying rings to $HOME/.config/conky"
cp ./startconky.sh $HOME/.config/conky
echo "copying startconky.sh to $HOME/.config/conky"

echo "~/.config/conky/startconky.sh &" >> $HOME/.xprofile
echo "adding start script to $HOME/.xprofile"
echo ""
echo "done"
