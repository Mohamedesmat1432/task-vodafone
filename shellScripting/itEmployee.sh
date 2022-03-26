echo "hello $(whoami)"
echo "running this script in $(date +%F)"
DATE=$(date +%d-%m-%Y)
FILE=IT_employess_count.txt
# Create the file or change it's modification date
touch company_info/$FILE
# INPUT=Employees.csv
OLDIFS=$IFS
IFS=","
COUNTER=0
# [ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read Name Age PhoneNumber Email Salary Department CountryCode CountryCode
do
	#echo "===================="
	if [ "$Department" == "IT" ]
	then
		COUNTER=$((COUNTER+1))
	fi

done < $1
echo $COUNTER
echo "Current Date is $DATE " >> company_info/$FILE
echo "==================================" >> company_info/$FILE
echo "Number of Employees: $COUNTER " >> company_info/$FILE
echo "==================================" >> company_info/$FILE
echo "##################################" >> company_info/$FILE
echo "############### Done check IT_employess_count.txt inside company_info directory"
IFS=$OLDIFS
