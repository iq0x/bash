while [ 1 ]
do

read -rsn1 key

case $key in
    'q') echo QUITTING ; exit ;;
    'w') echo UP ;;
    's') echo DN ;;
    'a') echo LEFT ;;
    'd') echo RIGHT ;;
    *) >&2 echo 'ERROR WRONG KEY';
esac


done
