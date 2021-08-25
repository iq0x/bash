#!/bin/bash
read -p "enter new password: " password


lenght=$(echo -n"$password" | wc -c)
#echo "$lenght"

bigletters=$(echo -n $password | grep -o [A-Z] | tr -d "\n" | wc -m)
#echo "$bigletters"

numbers="${password//[^1|2|3|4|5|6|7|8|9|0]}"
#echo "${#numbers}"


if [[ ${#password} -lt 8 ]] ; then
    echo "password must be at least 8 charakters!!"
    min_password_check=0
else
	min_password_check=1
    if [[ $password =~ [A-Z] ]] ; then
		if [[ $bigletters>=2 ]]; then
			bigletters_check=1
		else
			bigletters_check=0
			echo "big letters not ok"
		fi	
	fi	
	
	if [[ $password =~ [0-9] ]]; then
		if [[ $numbers<=2 ]]; then
			numbers_check=0
			echo "numbers not ok"
		else
			numbers_check=1
		fi
	else
		echo "at least 2 Numbers"
	fi
	
	if [[ $password == *['!'@#\$%^\&*()_+]* ]]; then
		special_letters_check=1
	else
		special_letters_check=0
		echo "at least 1 special char"
	fi
fi






if [[ $bigletters_check = '1' && $special_letters_check = '1' && $numbers_check = '1' && $min_password_check = '1' ]]; then
		echo "lpassword safe"
else
		echo "password not safe!!!!"
fi	


			

