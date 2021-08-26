read -p "word: " word


check=$(echo "$word" | grep -o [Ä,ä,Ö,ö,Ü,ü] | wc -l)

echo "Das Wort hat" $check "Umlaute"
