#!/bin/sh

# grsal.sh
# Date  : 03 March 2016
# Author: Ankit Pati

echo "Enter basic salary:"
read basic_salary

da="`echo \"scale=2; 40 * $basic_salary / 100\" | bc`"
hra="`echo \"scale=2; 20 * $basic_salary / 100\" | bc`"
incentive="`echo \"scale=2; (10 * $hra + 5 * $da) / 100\" | bc`"
gross="`echo \"scale=2; $da + $hra + $basic_salary + $incentive\" | bc`"

echo

echo "Basic Salary: $basic_salary"
echo "DA          : $da"
echo "HRA         : $hra"
echo "Incentive   : $incentive"
echo "Gross       : $gross"

# end of grsal.sh

: " OUTPUT

Enter basic salary:
10000

Basic Salary: 10000
DA          : 4000.00
HRA         : 2000.00
Incentive   : 400.00
Gross       : 16400.00

"
