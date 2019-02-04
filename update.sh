#!/bin/bash
#!/data/data/com.termux/files/usr/bin/bash

#Warna // Color
blue='\e[0;34m'
cyan='\e[0;36m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'

clear
echo -e $red"   [@]   Updating Dwipantara Tools   [@]"
rm dwipantara
wget https://raw.githubusercontent.com/loopstr34k/Dwipantara/master/dwipantarav024 2> /dev/null
chmod +x dwipantara
echo " "
function bar()
{
    bar=" @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    barlength=${#bar}
    i=0
    while ((i < 100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.02
    done
}
bar
echo " "
echo " "
echo -e $lightgreen"            [@]   Done   [@]"
