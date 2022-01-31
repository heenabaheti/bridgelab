firstNumCount=0
secondNumCount=0
thirdNumCount=0
fourthNumCount=0
fifthNumCount=0
sixthNumCount=0
while [ 1 ]
do
	rollingDice=$((RANDOM%6 +1))
	dice[value]=$rollingDice
	result=${dice[*]}

	case $result in
		1)
			firstNumCount=$((firstNumCount + 1))
			if [ $firstNumCount -eq 10 ]
			then
				echo "The number which has repeated 10 times is 1"
				break
			fi
			;;
		2)
			secondNumCount=$((secondNumCount + 1))
			if [ $secondNumCount -eq 10 ]
                        then
				echo "The number which has repeated 10 time is 2"
                                break
                        fi
			;;
		3)
			thirdNumCount=$((thirdNumCount + 1))
			if [ $thirdNumCount -eq 10 ]
                        then
                                echo "The number which has repeated 10 time is 3"
                                break
                        fi
			;;
		4)
			forthNumCount=$((forthNumCount + 1))
			if [ $forthNumCount -eq 10 ]
                        then
                                echo "The number which has repeated 10 time is 4"
                                break
                        fi
			;;
		5)
			fifthNumCount=$((fifthNumCount + 1))
			if [ $fifthNumCount -eq 10 ]
                        then
                                echo "The number which has repeated 10 time is 5"
                                break
                        fi
			;;
		6)
			sixthNumCount=$((sixthNumCount + 1))
			if [ $sixthNumCount -eq 10 ]
                        then
                                echo "The number which has repeated 10 time is 6"
                                break
                        fi
			;;
	esac
done

echo "1 repeated : " $firstNumCount "times"
echo "2 repeated : " $secondNumCount "times"
echo "3 repeated : " $thirdNumCount "times"
echo "4 repeated : " $fourthNumCount "times"
echo "5 repeated : " $fifthNumCount "times"
echo "6 repeated : " $sixthNumCount "times"
diceCount=( ["1"]=$firstNumCount ["2"]=$secondNumCount ["3"]=$thirdNumCount ["4"]=$fourthNumCount ["5"]=$fifthNumCount ["6"]=$sixthNumCount)
max=0
min=11
for(( i=1;i<=${#diceCount[@]};i++ ))
do
	if [ $max -le ${diceCount[$i]} ]
	then
		max=${diceCount[$i]}
	fi
	if [ $min -gt ${diceCount[$i]} ]
	then
		min=${diceCount[$i]}
	fi
done
for (( i=1;i<=${#diceCount[@]};i++ ))
do
	if [ $max -eq ${diceCount[$i]} ]
	then
		a=$((i+1))
		echo "$i has repeated maximum times"
	fi
	if [ $min -eq ${diceCount[$i]} ]
	then
		b=$((i+1))
		echo "$i has repeated minimum times"
	fi
done