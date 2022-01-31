min=1000
max=0
randomVarArray=()
 for (( i=1; $((i<=10)); i++ ))  
           do
               randomNum=$((RANDOM%1000))
               randomVarArray[$i]=$randomNum 
done
    echo "${randomVarArray[@]}"

  for (( i=1; $((i<=10)); i++ ))     
    do
        temp=0
        for (( j=i+1; $((j<=10)); j++ ))
              do
            if [ ${randomVarArray[i]} -gt ${randomVarArray[j]} ]
            then
                temp=${randomVarArray[i]}
                randomVarArray[i]=${randomVarArray[j]}
                randomVarArray[j]=$temp
            fi
        done
        echo "${randomVarArray[i]}"
    done
    echo "****** After Sorting ******"
    echo "${randomVarArray[@]}"
    echo "The second smallest element is :" ${randomVarArray[2]}
   echo "The second largest element is :" ${randomVarArray[9]}     

