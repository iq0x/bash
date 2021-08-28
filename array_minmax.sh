declare -a array=(1 2 3 4)

max=${array[0]}
min=${array[0]}

for i in "${array[@]}"; 
do
  (( i > max )) && max=$i
  (( i < min )) && min=$i
done

echo "max: $max, min: $min"
