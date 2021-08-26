i=1
j=1

while [ $i -le 5 ]
do
	result=$(($i * $j)) 
	echo $i "*" $j "=" $result
	((i++))
done
