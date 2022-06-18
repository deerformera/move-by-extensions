if [ $# -eq 2 ]; then
	for dir in $1 $2; do
		if ! [ -d $dir ]; then
			echo "${dir}: invalid directory"
			exit
		fi
	done
else
	echo -e "Usage: FROM TO\n"
	echo "More or less argument(s) expected."
	exit
fi

echo "Extension type: "
read answers
echo ""
for answer in $answers; do
	mv $1/*.$answer $2/ -v
done

