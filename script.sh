#!/bin/bash
echo "Creared a program \"script.sh\" Yust Eremey Vladimirovich."
echo "The program needed to change the password for the entered user"
echo "with the setting 0f mindays and maxdays password."
while true
do
echo "Enter the name of the user who needs to change the password:"
	read name
	if getent passwd $name >/dev/null 2&>1;
		then
			echo "User $user found" && break
		else
			echo "User $user no found"
	fi
done

while true
do
	echo "Enter mindays password"
	read min
	if ((min <= 99999 && min >= 0));
			then
				echo "nice mindays" && passwd -n $min $name && break
			else
				echo "no nice mindays"
	fi
done

while true
do
	echo "Enter maxdays password"
	read max
	if ((max <= 99999 && max >= 0));
			then
				echo "nice maxdays" && passwd -x $max $name && break
			else
				echo "no nice maxdays"
	fi
done

while true
do
	echo "Enter new password"
	passwd $name
	break;
done
