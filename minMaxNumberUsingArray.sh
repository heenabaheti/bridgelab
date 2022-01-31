min=1000
max=0
randomVarArray=()
for i in 1 2 3 4 5 6 7 8 9 10
           do
               randomNum=$((RANDOM%1000))
               randomVarArray[$i]=$randomNum
               if [ $randomNum -gt $max ]
               then
                 max=$randomNum
               else
                 max=$max
               fi

               if [ $randomNum -lt $min ]
               then
                 min=$randomNum
               else
                 min=$min
               fi
          done 
    echo "${randomVarArray[@]}"
    echo "Minimum value is:" $min
    echo "Maximum value is:" $max
