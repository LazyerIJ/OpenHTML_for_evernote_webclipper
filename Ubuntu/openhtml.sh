#!bin/bash
if [ "$#" -eq 2 ]; then
    args=("$@")


    myfile=$PWD"/${args[0]}"
    myimg=$PWD"/${args[1]}"
    localpath="/var/www/html/temp"
    localhtml="$localpath/${args[0]}"
    localimg="$localpath/${args[1]}"

    echo "[*]Selected HTML file  : "$myfile
    echo "[*]Selected img folder : "$myimg
    echo "[*]Copy HTML file path : "$localhtml
    echo "[*]Copy img floer path : "$localimg
    echo "...."

    eval "sudo cp $myfile $localhtml && sudo cp -r $myimg $localimg && google-chrome localhost/temp/${args[0]}"
    echo "...."
    echo "[*]Open HTML Completed"
    eval "sudo rm -rf $localhtml $localimg"
    echo "[*]Remove HTML and img"
    echo "[*]Work finished"
    exit 1
else
    echo "[ERROR]Only one parameter possible"
    echo "[ERROR]Exmaple : 'openhtml <html file> <img folder>'"
fi
