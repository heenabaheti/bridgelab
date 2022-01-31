read -p "enter range" num
for(( i=0;i<=$num;i++ ))
	do
        	a=$(($i % 10))
        	val=$((11 * $a))
        	if(( $i==0 ))
        	then
                continue
        	elif(( $i==$val ))
        	then
                	arrayOfRepeatedNum=("$i" "${arrayOfRepeatedNum[@]}")
        	fi
	done
	echo "The numbers are : "
	echo ${arrayOfRepeatedNum[@]}