y=1

for i in $(cat nombres.txt); do
	echo `mkdir $i`
	
	while [ $y -le $1 ]; do
		echo `mkdir /home/alumno/Escritorio/Practica6b/$i/personal$y`
		y=`expr $y + 1`
	done
	y=1
done
