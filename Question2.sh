
for textfile in `ls *.txt`
do
	mv $textfile new_$textfile
done

for pyfile in `ls *.py`
do
	length=`wc -l < $pyfile`
	if [ $length -ge 10 ]
	then
		mv $pyfile long_$pyfile
	else
		mv $pyfile short_$pyfile	
	fi
done

for bakfile in `ls *.bak`
do
	rm $bakfile
done

