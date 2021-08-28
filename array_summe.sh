declare -a array=(1 2 3 4)

echo -n "Summe = " 

summe=0

for i in ${array[@]};
do
	summe=`expr $summe + $i`  
done

echo $summe
