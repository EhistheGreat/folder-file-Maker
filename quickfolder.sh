#!/bin/bash

echo "program name: " 
read name 

echo " Folder  $name Created $(date) "

mkdir -p $name 

read -p  " Do you want to create a file [ Yes/No ]: " question

if [[ $question == "yes" ]];then
        echo  "press enter for default file type 0" 
        echo -e "what kind of file extention \n 1) press 1 for python file \n 2) press 2 for yaml file \n 3) press 3 for bash script \n 4) press 4 for initialization"
        read -p "pick options from (0-4): " options


        read -p "enter file name: " filename

        case $options in 
        1)

         touch $name/$filename.py
         sleep 1

         echo " File Created at $(date) "
         ;;
        2) 
         touch $name/$filename.yml
         sleep 1
         echo "file Created !"
         echo " --- " > $name/$filename.yml
         ;;
        3)
         touch $name/$filename.sh
         sleep 1
         echo "File Created "
         echo "#!/bin/bash" > $name/$filename.sh
         chmod +x $name/$filename.sh
         ;;
        4)
         touch $name/$filename.ini
         sleep 1
         echo " File Created "
         ;;
        0)
         touch $name/$filename.txt
         sleep 1
         echo "File Created "
         ;;
         esac
fi


