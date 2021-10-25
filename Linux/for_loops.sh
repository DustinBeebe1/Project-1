#!/bin/bash

#states
state=('TN','WY','ID','FL','MN')

for state in ${state[@]} 
do
	if [ $state == 'HW' ];
	then 
		echo "Hawaii is the best!"
	else
		echo "I'm not fond of Hawaii"
	fi
done

