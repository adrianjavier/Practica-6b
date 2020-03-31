max=`cat precipitaciones.txt | wc -l`
i=1
total=0
actual=0

while [ $i -le $max ]; do 
	actual=`awk '{print $2}' precipitaciones.txt | head -$i | tail -1`
	total=`expr $total + $actual`
	i=`expr $i + 1`
done
total=`expr $total / $max`
echo "La media de precipitaciones es $total"	
