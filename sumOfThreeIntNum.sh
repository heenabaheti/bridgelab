	echo "Enter the length of the array:"
	read n
	i=0
	echo "Enter the number you want to store:"
	while [ $i -lt $n ]
	do
        	read arr[$i]
        	i=$((i+1))
	done
	echo "Elements of the array are : ${arr[*]}"
	found=0
	for(( i=0;i<$n-2;i++ ))
	do
        	for(( j=$i+1;j<$n-1;j++ ))
        	do
                	for(( k=$j+1;k<$n;k++ ))
                	do
                        	sum=$(( ${arr[$i]/,}+${arr[$j]/,}+${arr[$k]/,} ))
                        	if (( $sum == 0 ))
                        	then
                                	echo "Elements whose sum is zero are : ${arr[$i]} ${arr[$j]} ${arr[$k]} "
                                	found=1
                        	fi
                	done
        	done
	done
	if (( $found == 0 ))
	then
        	echo " no elemnts are there whoes sum is zero "
	fi