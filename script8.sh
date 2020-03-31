i=1
while [ $i -le 255 ]; do
	existe=`ping -c 1 10.0.2.$i | grep "+1 errors" | wc -l`
	if [ $existe = 0 ]; then 
		echo "La direccion: 10.0.2.$i está conectada"
	fi
	i=`expr $i + 1`
done 
