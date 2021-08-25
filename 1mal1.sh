i=1

while [ $i -lt 10 ]
do
	j=0
	while [ $j -lt 10 ]
		do
		((j++))
		result=$(($i * $j)) 
		echo $i "*" $j "=" $result
	done
	((i++))
done
