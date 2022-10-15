if [ $# -eq 0 ]
then
	echo "Invalid input"
	exit 0
fi

if [ $1 -lt 1 -o $2 -lt 1 ]
then
	echo "Wrong input, input must be greater than 0"
	exit 0
fi
for i in  $(seq 1 $1)
do
	for j in $(seq 1 $2)
	do
		result=`expr $i \* $j`
		printf "%d*%d=%-2d" $i $j $result
	done
	echo
done
exit 0
