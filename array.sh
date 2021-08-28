declare -a array=("test1" "test2" "test3")

for i in "${array[@]}"
do
	if (( echo"${array[i]}" ="test2" )); then
		echo "ok"
	
	else
		echo "$i"
		echo "${array[1]}"
	fi
done
