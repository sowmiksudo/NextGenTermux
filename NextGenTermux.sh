#! /bin/bash
# CODED BY SHAYER MAHMUD SOWMIK
# GITHUB/Ign0r3dH4x0r
# FB/Ign0r3dH4x0r
# IF YOU USE ANY PART OF THIS SCRIPT IN YOUR PROJECT, PLEASE GIVE ME CREDIT.
# IT WILL INSPIRE ME TO DO SOMETHING NEW FOR YOU GUYS :D
# HAPPY CODING :V

# START
trap 'printf "\n";stop;exit 1' 2
trap user_interrupt SIGINT
trap user_interrupt SIGTSTP
user_interrupt(){
        printf "\e[0m\n"
        printf "\n\e[32m[\e[37m+\e[32m]\e[0m \e[1;36m Thank for using NextGenTermux! Exiting. . . .\e[0m"
        sleep 1
        xdg-open http://github.com/Ign0r3dH4x0r
        exit 1
}
sleep 1

# BANNER OF SCRIPT


logo(){
clear
printf "\n"
printf "        \e[1;37m<<< \e[1;91mIgn0r3dH4x0r Presents \e[37m >>>\e[0m\n"
printf "\e[1;33m      _   __          __  \e[36m ______            \e[0m\n"
printf "\e[1;33m     / | / /__  _  __/ /_ \e[36m/ ____/__  ____    \e[0m\n"
printf "\e[1;33m    /  |/ / _ \| |/_/ __/\e[36m/ / __/ _ \/ __ \   \e[0m\n"
printf "\e[1;33m   / /|  /  __/>  </ /_ \e[36m/ /_/ /  __/ / / /   \e[0m\n"
printf "\e[1;33m  /_/ |_/\___/_/|_|\__/ \e[36m\____/\___/_/ /_/    \e[0m\n"
printf "         \e[91m>>>\e[1;32m One Tap Termux Customizer"
printf "\e[0m\n\n"
}

# MODIFIED BANNER


logo2(){
clear
printf "\n"
printf "        \e[1;37m<<< \e[1;91mIgn0r3dH4x0r Presents \e[37m >>>\e[0m\n"
printf "\e[1;33m      _   __          __  \e[36m ______            \e[0m\n"
printf "\e[1;33m     / | / /__  _  __/ /_ \e[36m/ ____/__  ____    \e[0m\n"
printf "\e[1;33m    /  |/ / _ \| |/_/ __/\e[36m/ / __/ _ \/ __ \   \e[0m\n"
printf "\e[1;33m   / /|  /  __/>  </ /_ \e[36m/ /_/ /  __/ / / /   \e[0m\n"
printf "\e[1;33m  /_/ |_/\___/_/|_|\__/ \e[36m\____/\___/_/ /_/    \e[0m\n"
printf "         \e[91m>>>\e[1;32m One Tap Termux Customizer"
printf "\e[0m\n\n"
printf "\e[31m >>> \e[1;97mInstalling Packages..\e[1;93m It may take some time, please don't exit. \n\n \e[0m"
}

# MENU OF SCRIPT

index(){
  echo " "
  sleep 0.2
  printf " \e[0m\e[31m>>> \e[1;32m Index Menu: \e[0m\n"
  printf "\n\e[1;93m [01] START SETUP NOW"
  printf "\n\e[1;93m [02] MORE COOL STUFFS"
  printf "\n\e[1;93m [03] UPDATE TOOL"
  echo ""
  read -p $'  \n\e[1;31m[\e[0m\e[1;37m~\e[0m\e[1;31m]\e[0m\e[1;92m Select an option: \e[0m\e[1;96m\en' sel
  if [[ $sel == 1 || $sel == 01 ]]; then
    setup_main
  elif [[ $sel == 2 || $sel == 02  ]]; then
    xdg-open http://github.com/Ign0r3dH4x0r
  elif [[ $sel == 3 || $sel == 03  ]]; then
    git pull origin
  else
    printf "\n  \e[31m[\e[1;33m~\e[31m] Invalid Options! Try again."
    sleep 1
    bash NextGenTermux.sh
  fi
}

# MAIN PACKAGES INSTALLER

Deps(){
sleep 1
logo2
printf "\n\n \e[1;91m[\e[1;37m~\e[1;91m] PLEASE CLICK ALLOW IF IT ASKS."
sleep 1
termux-setup-storage
logo2
apt update -y
logo2
apt upgrade -y
logo2
command -v curl > /dev/null 2>&1 || { printf "\n\t\e[0m\e[0m\e[36m[\e[1;37m+\e[36m] \e[34m   Installing CURL... \e[0m\n\n"; apt install curl -y; logo2; }
command -v wget > /dev/null 2>&1 || { printf "\n\t\e[0m\e[0m\e[36m[\e[1;37m+\e[36m] \e[34m   Installing WGET... \e[0m\n\n"; apt install wget -y;logo2; }
command -v git > /dev/null 2>&1 || { printf "\n\t\e[0m\e[0m\e[36m[\e[1;37m+\e[36m] \e[34m   Installing GIT... \e[0m\n\n"; apt install git -y; logo2; }
command -v python > /dev/null 2>&1 || { printf "\n\t\e[0m\e[0m\e[36m[\e[1;37m+\e[36m] \e[34m   Installing PYTHON... \e[0m\n\n"; apt install python python2 python3 -y; logo2; }
command -v ruby > /dev/null 2>&1 || { printf "\n\t\e[0m\e[0m\e[36m[\e[1;37m+\e[36m] \e[34m   Installing RUBY... \e[0m\n\n"; apt install ruby -y; logo2; }
command -v figlet > /dev/null 2>&1 || { printf "\n\t\e[0m\e[0m\e[36m[\e[1;37m+\e[36m] \e[34m   Installing FIGLET... \e[0m\n\n"; gem install figlet -y; logo2; }
command -v lolcat > /dev/null 2>&1 || { printf "\n\t\e[0m\e[0m\e[36m[\e[1;37m+\e[36m] \e[34m   Installing LOLCAT... \e[0m\n\n"; pip install lolcat; logo2; }
command -v toilet > /dev/null 2>&1 || { printf "\n\t\e[0m\e[0m\e[36m[\e[1;37m+\e[36m] \e[34m   Installing TOILET... \e[0m\n\n";pkg install toilet -y;logo2; }
command -v cowsay > /dev/null 2>&1 || { printf "\n\t\e[0m\e[0m\e[36m[\e[1;37m+\e[36m] \e[34m   Installing COWSAY... \e[0m\n\n";pkg install cowsay -y;logo2; }
command -v fish > /dev/null 2>&1 || { printf "\n\t\e[0m\e[0m\e[36m[\e[1;37m+\e[36m] \e[34m   Installing FISH... \e[0m\n\n"; apt install fish -y; logo2; }
apt install cmake -y
logo2
apt install nodejs -y
logo2
apt install golang -y
logo2
apt install bash -y
logo2
apt install clang -y
logo2
apt install jq -y
logo2
apt install macchanger -y
logo2
apt install nano -y
logo2
apt install curl -y
logo2
apt install tar -y
logo2
apt install zip -y
logo2
apt install unzip -y
logo2
apt install tor -y
logo2
apt install wget -y
logo2
apt install wcalc -y
logo2
apt install openssl -y
logo2
apt install openssh -y
logo2
apt install java -y
logo2
apt install bmon -y
logo2
pip install requests
pip install mechanize
pip install lolcat
pip install termcolor
}

# EXTRA KEY ADDER

extra_key(){
  logo
  sleep 2
  printf "\n \e[1;91m[\e[1;37m~\e[1;91m] SETTING UP ENVIRONMENT..."
  mkdir -p /data/data/com.termux/files/home/.termux
  touch /data/data/com.termux/files/home/.termux/termux.properties
  cd ~/.termux
  sleep 2
  printf "\n \e[1;91m[\e[1;37m√\e[1;91m] DONE!"
  sleep 3
  printf "\n\n \e[1;91m[\e[1;37m~\e[1;91m] WRITING SETTINGS..."
  keys="extra-keys = [['ls','cd','cd ..','nano ','UP','clear','pwd'],['bash ','CTRL','python2 ','LEFT','DOWN','RIGHT','exit']]"
  echo $keys > termux.properties
  sleep 2
  printf "\n \e[1;91m[\e[1;37m√\e[1;91m] DONE!"
  sleep 1
  printf "\n\n \e[1;91m[\e[1;37m~\e[1;91m] REFRESHING TERMUX..."
  sleep 2
  termux-reload-settings
  printf "\n \e[1;91m[\e[1;37m√\e[1;91m] EXTRA KEYS ADDED..."
}

# BANNER ADDER

bashrc(){
logo
printf "\n\n \e[1;91m[\e[1;37m~\e[1;91m] ADDING BANNER FOR STARTUP..."
sleep 2
read -p $'  \n\e[1;31m[\e[0m\e[1;37m~\e[0m\e[1;31m]\e[0m\e[1;92m Enter name for banner : \e[0m\e[1;96m\en' user_name
cd $PREFIX/etc
rm -rvf bash.bashrc
clear
logo
touch bash.bashrc
echo "clear" >> bash.bashrc
echo "cowsay -f eyes 'NextGenTermux' | lolcat" >> bash.bashrc
echo "toilet -f big '     $user_name     ' | lolcat" >> bash.bashrc
echo "echo" >> bash.bashrc
echo "PS1='\$ '" >> bash.bashrc
echo "fish" >> bash.bashrc
cd ~/.config/fish/functions
rm -rvf fish_greeting.fish
echo "function fish_greeting" >> fish_greeting.fish
echo "  printf \"\e[1;33mWelcome \e[1;97m$user_name! \e[1;33mHave a nice day!\e[0m\"\n" >> fish_greeting.fish
echo "end" >> fish_greeting.fish
sleep 4
printf "\n \e[1;91m[\e[1;37m√\e[1;91m] BANNER SETUP DONE!"
}

# CHECK NET CONNECTION

check_net(){
  {
  NET="$(ping -c 1 -q www.google.com >&/dev/null; echo $?)"
  } &> /dev/null
  if [[ "$NET" != 0 ]]
  then
     printf "\n\e[1;93m [x] \e[1;97m NO INTERNET CONNECTION; OR YOUR INTERNET SPEED TOO SLOW."
     exit 1
  fi
}

# ENDING

finish(){
logo
texts="\n\n \e[1;91m[\e[1;37m√\e[1;91m] CONGRATULATIONS! YOUR TINY CYBERLAB IS READY TO GO..!"
for i in $texts;do echo -e -n "$i "; sleep 0.1; done
sleep 1
texts="\n\n \e[1;91m[\e[1;37m~\e[1;91m] PLEASE VISIT OUR GITHUB FOR MORE CRAZY TOOLS!"
for i in $texts;do echo -e -n "$i "; sleep 0.1; done
sleep 2
xdg-open https://github.com/Ign0r3dH4x0r
}

# SETUP CONTROLLER

setup_main(){
logo
check_net
printf "\n \e[1;35m YOU MUST NEED AROUND 1GB OF INTERNET WITH GOOD COVERAGE AND SOME TIME... \e[0m\n\n"
sleep 2
sleep 1
Deps
sleep 2
logo
sleep 1
printf "\n\n \e[1;91m[\e[1;37m√\e[1;91m] ALL ESSENTIAL PACKAGES INSTALLED SUCCESSFULLY..."
sleep 3
# Keys
logo
texts="\n\n \e[1;91m[\e[1;37m~\e[1;91m] ADDING EXTRA KEYS TO YOUR TERMUX..."
for i in $texts;do echo -e -n "$i "; sleep 0.1; done
sleep 3
extra_key
sleep 2
logo
# Banner
bashrc
sleep 3
finish
}

# THE GAMER :P

logo
index



# END OF FILE
