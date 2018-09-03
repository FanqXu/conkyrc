#!/bin/bash

if [ ! -d "$HOME/.config/conky" ]
then
	mkdir -p $HOME/.config/conky
fi
cp ./arch_logo $HOME/.config/conky
echo "copying arch_logo to $HOME/.config/conky"
cp ./clock $HOME/.config/conky
echo "copying clock to $HOME/.config/conky"

t=$(grep 'processor' /proc/cpuinfo | sort -u | wc -l)
r=75

for ((i=1; i<=$t; i++))
do
	content=$(
cat << EOF
\\\t{
\\\t\tname='cpu',
\\\t\targ='cpu$i',
\\\t\tmax=100,
\\\t\tbg_colour=0xffffff,
\\\t\tbg_alpha=0.2,
\\\t\tfg_colour=0xffffff,
\\\t\tfg_alpha=0.5,
\\\t\tx=160,
\\\t\t\ty=155,
\\\t\tradius=$r,
\\\t\tthickness=5,
\\\t\tstart_angle=93,
\\\t\tend_angle=208
\\\t},
EOF
	)
	for item in $content
	do
		n=$(grep -n "cpu here" clock_rings.lua | cut -f 1 -d ":")
		sed -i "${n}i $item" clock_rings.lua
	done
	let "r = r + 6"
done

sed -i "/cpu here/d" clock_rings.lua

cp ./clock_rings.lua $HOME/.config/conky
echo "copying clock_rings.lua to $HOME/.config/conky"
cp ./cpu $HOME/.config/conky
echo "copying cpu to $HOME/.config/conky"

mydisk=$(df | grep "\s/$" | cut -f 1 -d " ")
sed -i "s/rootdisk/$mydisk/g" disk
cp ./disk $HOME/.config/conky
echo "copying disk to $HOME/.config/conky"

myinterface=$(ip link | grep UP | grep BROADCAST | grep -v CARRIER | grep -v LOOP | cut -f 2 -d ":" | cut -f 2 -d " ")
sed -i "s/interface/$myinterface/g" network
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

