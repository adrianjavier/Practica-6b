i=1
x=0
day=0
max=`cat precipitaciones.txt | wc -l`
while [ $i -le $max ]; do
	x=`awk '{print $2}' precipitaciones.txt | head -$i | tail -1`
	if [ $x = 0 ]; then
		day=`awk '{print $1}' precipitaciones.txt | head -$i | tail -1`
		case $day in 
			1|8)
				echo "El Lunes $day no llovio"
				;;
			2|9)
				echo "El Martes $day no llovio"
				;;
			3|10)
				echo "El Miercoles $day no llovio"
				;;
			4)
				echo "El Jueves $day no llovio"
				;;
			5)
				echo "El Viernes $day no llovio"
				;;
			6)
				echo "El Sabado $day no llovio"
				;;
			7)
				echo "El Domingo $day no llovio"
				;;
		esac 		
	fi
	i=`expr $i + 1`
done
