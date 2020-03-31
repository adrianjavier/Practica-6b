valor=0
max=`cat numeros.txt | wc -l`
i=1
pares="Los numeros pares son: "
impares="Los numeros impares son: "
numpares=0
numimpares=0
while [ $i -le $max ]; do
	valor=`cat numeros.txt | head -$i | tail -1`
	division=`expr $valor % 2` 
	if [ $division = 0 ]; then
		pares="$pares $valor"
		numpares=`expr $numpares + 1`
	else
		impares="$impares $valor"
		numimpares=`expr $numimpares + 1`		
	fi 
	i=`expr $i + 1`
done

echo "$pares total: $numpares"
echo "$impares total: $numimpares"






