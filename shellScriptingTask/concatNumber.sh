echo "hello $(whoami)"
echo "running this script in $(date +%F)"
FILE=$1
OLDIFS=$IFS
IFS=","
DATE=$(date +%d-%m-%Y)
# awk -F"," '{ printf "%-10s %s\n", $1, $2 }' $FILE
CODE=()
PHONE=()
# [ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read Name Age PhoneNumber Email Salary Department CountryCode
do
	CODE=$(( CountryCode ))
	echo $CODE
done < $1
echo $CODE
IFS=$OLDIFS
