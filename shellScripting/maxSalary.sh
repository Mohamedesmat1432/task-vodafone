echo "hello $(whoami)"
echo "running this script in $(date +%F)"
DATE=$(date +%d-%m-%Y)
FILE=technology_salaries.txt
# Create the file or change it's modification date
touch company_info/$FILE
# INPUT=Employees.csv
OLDIFS=$IFS
IFS=","
maxSal=0
# [ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read Name Age PhoneNumber Email Salary Department CountryCode CountryCode
do
	if [ $Salary = "Salary" ]
	then
		echo $Salary
	else
		if [ -z $minSal ]
		then
			minSal=$Salary
		fi
		if [ $Salary -gt $maxSal ]
		then
			maxSal=$Salary
		elif [ $minSal -gt $Salary ]
		then
			minSal=$Salary
		fi
	fi
done < $1
echo $maxSal
echo $minSal
echo "Current Date is $DATE " >> company_info/$FILE
echo "==================================" >> company_info/$FILE
echo "The Max Salary of employees: $maxSal " >> company_info/$FILE
echo "==================================" >> company_info/$FILE
echo "The Max Salary of employees: $minSal " >> company_info/$FILE
echo "==================================" >> company_info/$FILE
echo "##################################" >> company_info/$FILE
echo "############### Done check technology_salaries.txt inside company_info directory"
IFS=$OLDIFS
