borrados=`ls -l $1 | find *.txt | wc -l`
echo `rm $1/*.txt`
echo "Se han borrado $borrados archivos"




