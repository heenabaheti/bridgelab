janMonthCount=0
febMonthCount=0
marMonthCount=0
aprMonthCount=0
mayMonthCount=0
junMonthCount=0
julMonthCount=0
augMonthCount=0
septMonthCount=0
octMonthCount=0
novMonthCount=0
decMonthCount=0
for(( i=1;i<=50;i++ ))
do
	month=$((RANDOM%13))
	case $month in
		1)
			janMonthCount=$((janMonthCount + 1))
			;;
		2)
			febMonthCount=$((febMonthCount + 1))
			;;
		3)
			marMonthCount=$((marMonthCount + 1))
			;;
		4)
			aprMonthCount=$((aprMonthCount + 1))
			;;
		5)
			mayMonthCount=$((mayMonthCount + 1))
			;;
		6)
			junMonthCount=$((junMonthCount + 1))
			;;
		7)
			julMonthCount=$((julMonthCount + 1))
			;;
		8)
			augMonthCount=$((augMonthCount +1))
			;;
		9)
			septMonthCount=$((septMonthCount + 1))
			;;
		10)
			octMonthCount=$((octMonthCount + 1))
			;;
		11)
			novMonthCount=$((novMonthCount + 1))
			;;
		12)
			decMonthCount=$((decMonthCount + 1))
			;;
	esac
done

birthdayCount=( ["1"]=$janMonthCount ["2"]=$febMonthCount ["3"]=$marMonthCount ["4"]=$aprMonthCount ["5"]=$mayMonthCount
		["6"]=$junMonthCount ["7"]=$julMonthCount ["8"]=$augMonthCount ["9"]=$septMonthCount ["10"]=$octMonthCount
		["11"]=$novMonthCount ["12"]=$decMonthCount )
echo "The count of individuals having birthday in same month is as follows: "
for(( i=1;i<=${#birthdayCount[@]};i++ ))
do
	echo "Month $i have ${birthdayCount[$i]} persons Birthday"
done