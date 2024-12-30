echo "---GUESSING GAME---"
echo "Guess how many files : "
read guess
function get_nfile {
	local number=$(ls -l | wc -l)-1
	echo $number
}

correct=$(get_nfile)

while [[ $guess -ne $correct ]]
do
	if [[ $guess -gt $correct ]]
	then
		echo "Your guess is too high"
	else 
		echo "Your guess is too low "
	fi
	echo
	echo "Try again: "
	read guess
done

echo "Congratulations! You guessed right !"
