#! /bin/sh
echo "Enter Limit Of Pentagonal Series"
read l
i=0
while [ $i -lt $l ]
do
	b=$(expr $i * 3)
	c=$(expr $b - 1)
	d=$(expr $b \* $i)
	a[$i]=($(expr $d / 2))
	i= $(expr $i + 1)
done
j=0
k=1
while[$j -lt $l]
do
	while[$k -lt $l]
	do
		x=$(expr $a[$j] + $a[$k])
		if[ $a[$j] -gt "$a[$k]]
		then
			y=$(expr $a[$j] - $a[$k])
		else
			y=$(expr $a[$k] - $a[$j])
		fi
		p=0
		while[$p -lt $l]
		do
			if[$x -eq $a[$p]]
			then
				if[$y -eq $a[$p]]
				then
					echo "The pair of nos are $p[$j] and $p[$k]"
					echo "The difference D = $y"
				fi
			else
				echo "The nos are not pentagonal"
			fi
			p=$(expr $p + 1)
		done
	done
done
