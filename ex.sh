#!/usr/bin/bash 

echo “run by $(whoami)”;

if [[  “$(whoami)” != “root” ]]; then 
	echo “you must be root!”
	exit 1
fi

for num in $(seq 10 30)
do	
	echo “adding user $num”
        if ! grep -wq "user${num}" /etc/passwd;then
            
	   useradd -m -s /bin/bash “user${num}”
	   echo “user user$num was added successfully
        else 
           echo "user exist"
        fi
done
