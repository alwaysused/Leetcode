function long_sub
{	
	min_len=10000
	lst=($1)
	for str in ${lst[*]}
	do
		len=${#str}
		if [ $len -lt $min_len ] 
		then
			base=$str
			min_len=$len
		fi
	done

	cur_len=$min_len
	while [ $cur_len -gt 0 ]
	do
	fit=1
	temp=${base:0:$cur_len}
	#echo $temp
	for str in ${lst[*]}
	do 	
		#echo ${str:0:$cur_len}
		if [ $temp != ${str:0:$cur_len} ]
		then
		fit=0
		break
		fi
	done
	if [ $fit -eq 1 ]
	then
		echo $temp
		return 0
		
	fi
	((cur_len--))
	done
	echo ''
}
qq=($1)
long_sub "${qq[*]}"

