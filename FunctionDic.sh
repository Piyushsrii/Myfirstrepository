#!/bin/bash -x

# CONSTANT FOR THE PROGRAM
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=4;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;
# VARIABLES
totalEmpHr=0;
totalWorkingDays=0;
count=0;
totalWorkHours=0;

function getEmpWage(){
     local empHr=$1
     echo $(($empHr*$EMP_RATE_PER_HR))
     echo $(($workHours))
}

function getWorkingHours(){
      #local $empcheck=$1 
case $1 in 
       $IS_FULL_TIME)
                  workHours=8
               ;;
            $isPartTime)
              workHours=4
                ;;
         *)
           workHours=0
              ;;
             esac
           echo $workHours
            }
while [[ $totalWorkHours -lt $MAX_HRS_IN_MONTH &&
             $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
       ((totalWorkingDays++))
         empcheck=$((RANDOM%3))
           workHours="$(getWorkingHours $empcheck)" 
        totalEmpHours=$(( $totalEmpHours + $workHours ))
         count=$(($totalWorkingDays))  
            echo $count
         dailyWage[$totalWorkingDays]=$(getEmpWage $workHours)
    done
          totalSalary=$(( $totalEmpHours*$EMP_RATE_PER_HR ))
          echo ${dailyWage[@]}
