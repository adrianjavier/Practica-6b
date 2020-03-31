max=`cat listado.txt | wc -l`
i=1
numlinux=0
numproclinux=0
numwindows=0
numprocwindows=0
while [ $i -le $max ]; do
	sistema=`awk '{print $2}' listado.txt | head -$i | tail -1`
	if [ $sistema = "Linux" ]; then
		numlinux=`expr $numlinux + 1`
		numproclinux=`expr $numproclinux + $(awk '{print $3}' listado.txt | head -$i | tail -1)`
	else
		numwindows=`expr $numwindows + 1`
		numprocwindows=`expr $numprocwindows + $(awk '{print $3}' listado.txt | head -$i | tail -1)`
	fi
	i=`expr $i + 1`
done

echo "Linux-> $numlinux $numproclinux"
echo "Windows-> $numwindows $numprocwindows"
