read -p "word: " x

i=0

while (( j=${#x}-1 ))
do
	((j--))
	((i++))
    [[ ${x:$i:1} != ${x:$j:1} ]] && break
done

if (( i>j ))
then
    echo "Palindrome"
else
    echo "Not Palindrome"
fi
