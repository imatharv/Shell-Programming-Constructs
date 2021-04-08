#! /bin/bash 

# generate 3 digit random number
function generateRandomNumber() 
{
	randomNumber=$((RANDOM%1000))
	echo $randomNumber
}

# Find the second largest number 
function findSecondLargestSmallest() 
{
	randomNumbers=("$@")
	largestNumber=${randomNumbers[0]}
	secondLargestNumber=${randomNumbers[0]}
	smallestNumber=${randomNumbers[0]}
	secondSmallestNumber=${randomNumbers[0]}

	length="${#randomNumbers[@]}"

	for ((i=1; i < $length ; i++)) 
	do
		if [ $largestNumber -lt ${randomNumbers[$i]} ]
		then
			secondLargestNumber=$largestNumber 
			largestNumber=${randomNumbers[$i]}
		elif [ $secondLargestNumber -lt  ${randomNumbers[$i]} ]
		then
			 secondLargestNumber=${randomNumbers[$i]}
		fi
		if [ $smallestNumber -gt ${randomNumbers[$i]} ]
        		then
                			secondSmallestNumber=$smallestNumber
                			smallestNumber=${randomNumbers[$i]}
        		elif [ $secondSmallestNumber -gt  ${randomNumbers[$i]} ]
        		then
                 			secondSmallestNumber=${randomNumbers[$i]}
        		fi
	done
	echo "Second Largest number is $secondLargestNumber"
	echo "Second Smallest number is $secondSmallestNumber"
}

# Store the random number to the unsorted array
function storeRandomNumber() 
{
	i=0
	while [ $i -lt 10 ]
	do
		randomNumberArray[((i++))]=$(generateRandomNumber)
	done
	echo ${randomNumberArray[@]}	
	findSecondLargest ${randomNumberArray[@]} 
}

storeRandomNumber


