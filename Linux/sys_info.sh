#!/bin/bash
#Create directory for output
sudo mkdir ~/research 2> /dev/null

echo "This is the Sysinfo script."
date 
echo -e "Uname info: $(uname -a) \n"
echo -e "IP Info: $(ip addr | head -9 | tail -1) \n"
echo -e "Hostname: $(hostname)"
sudo find /home -type f -perm 777 >> ~/research/sys_info.txt
sudo ps aux --sort -%mem | awk {'print $1, $2, $3, $4, $11'} | head >> ~/research/sys_info.txt


file=~/research/sys_info.txt

if [ ! -d ~/research]

echo "The directory is there."

then 
	sudo mkdir ~research
fi

if [ -f ~/research/sys_info.txt]

then 
	 rm ~/research/sys_info.txt

fi


paths=(
        '/etc/shadow' 
        '/etc/passwd'
)
for perm in ${paths[@]}
do
        echo $(ls -la $paths)
done

