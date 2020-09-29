#!/bin/bash
# or
#!/bin/sh
# finding the 20 files which are having max size  
 find / -xdev -type f -size +100000c -exec ls -la {} \; 2>/dev/null | sort -nk5 | tail -20
# Delete files and folder which are older than 5 days
 find /path/to/directory/ -mindepth 1 -mtime +5 -delete
# check last rebootsalt
 last reboot
# find the file name in server
 locate -e filename
#--------------------------------------------------------------------------------------------------------------------------------
 ftp hostname
 # or
 ftp://username:password@hostname
# Now, once connected the 5 most common options are:
 cd foldername      #e.g. cd /downloads/recent
 get filename       #e.g. get thisisthefileiwant.text
 put filename       #e.g. put sendthistotheserver.txt
 mget filenameregex #e.g mget * to get every file in a directory
 mput filemameregex #e.g. mput *.txt to upload every txt file to the server
# Command for set the timezone in ec2 instance
 sudo dpkg-reconfigure tzdata 
# Create the logical volume and add to the existing logical volume in ubuntu EC2 instance.
 lsblk
 vgdisplay
# created instance LVM-Testing
# and create 3 volumes (volume1 + volume2 + volume3 ) + 1 volume( volume4)
# add first 3 volumes in 1 logical volume name volumeall
 lsblk
# check the name of the attached volume then 
 sudo pvcreate /dev/xvdf /dev/xvdg /dev/xvdh 
# 3 volumes attached to this instance
 sudo pvdisplay
 sudo vgcreate volumeall /dev/xvdf /dev/xvdg /dev/xvdh
 sudo vgextend volumeall /dev/xvdj
 sudo vgdisplay 
# shows volume group size
 sudo pvcreate /dev/xvdi
# Need to create logical volume and the extend logical volume 
 sudo lvcreate -nfedora64-1 -L8G volumeall
 sudo lvextend -L +20G   /dev/precise-build
 sudo resize2fs /dev/precise-build/root
 sudo mkfs.ext3 /dev/volumeall/fedora64-1
# Use chkconfig command for make service as startup service 
 sudo chkconfig httpd on 
# Find authorized keys 
 cd ~/.ssh/
# tcp dump in network
 tcpdump -i lo 
#-----------------------------------------------------------------------------------------------------------------
 grep -r udp
# Find any word in unknown file 
 find . -name "*.txt" -exec grep -i "any word" {} \;
 time find / -name core 
-----------------------------------------------------------------------------------------------------------------------------
# check the RAM  or free space
 cat /proc/meminfo
 vmstat -s 
 htop
 free -m
# For SDI output
 cd /proc/evod/ cat hwstat
#-----------------------------------------------------------------------------------------------------------------------------
 whereis command_name 
# check the port data transmission and configuration for ptpd
 sudo ethtool eth4
#-----------------------------------------------------------------------------------------------------------------------------
# Database commands
 mysql  –u MEDDBA –p
# Masterkey
 show databases;
 use mysql;
 show tables;
 describe tablename;
# Check the system level logs
 /var/log/dmesg
 /var/log/kern.log
 /var/log/syslog
# Convert url to ip address
 % dig +short stackoverflow.com
# check the port is active or not   
 netstat -tuplen
# for routing table
 netstat -r   
#----------------------------------------------------------------------------------------------------------------------------
 Pssh # for run a command in multiple server
 Pscp # for copy file in multiple servers
 Prsync # for efficient copy
 Pnuke # for killing processes in multiple servers
 Pslurp
# for search and replace  
 sed -i -e 's/.xml//g' /tmp/foo.txt 
# For check the OS version 
 cat /etc/os-release
# For open the log files  
 less filename
# checking the free space 
 df -h
# show the list of files according to size  
 ls –ltrhS
# TOP 10 Files which are having max size in whole system 
 du  -a  / | sort  -n  -r | head  -n 10 
 find / -size +1G -size -3G 2>> /dev/null
# copy files or folder from one server to another à scp filename  server name or IP:/path/
 scp  -r foldername server name or IP:/path/
# Kill any process   
 kill -9 processId
# search the process by its name      	
 ps  -aux | grep process name
# For display all the processes
 ps  -ef  
# display all the processes and how much memory, cpu time, user, pid à 
 top
#-------------------------------------------------------------------------------------------------------------------------------
 dig url +trace
#-------------------------------------------------------------------------------------------------------------------------------
# Type 'screen -S {name}' where 'name' is any name you want to give your screen session
# Then you're in the screen session, which looks like nothing has changed practically
# Then type the command in like you normally would.
# Press Ctrl A + D to get out of the session (detaches it)
# Type 'screen -ls' to see all active screen sessions (should see your one after you've made it)
# Then type 'screen -r {name}' to reattach the screen session

#------------------------------------------------
echo myvar is $myvar
export var2="var2 value" 
# will make this variable as environment variable
# or we can use declare -x mynewvar

a=1
(
a=2
)
echo $a
#prints 1

a=1
{
a=2
}
echo $a
#prints 2

 
# show built in commands
enable
# shows keyword
compgen -k 

.bashrc
.bash_profile

# exported variable got copy to the new shell
# interpret the command inside the source script
source example.sh  or . example.sh 

alias ll="ls -l"

chmod +x file.sh
chmod 755 file.sh

echo 'sample output' >&2
#------------------------------------
typeset -i x
declare -i y
#-----------------------------
while ((x<10))
	
do 
	echo loop $x; date > data.$x
	((x=x+1))
done
#------------------------------------
while 
read a b
do 
echo a is $a b is $b
done
#---------------------------------------
ls -l | while 
	read a b c d 
do
echo owner is $c
done
#---------------------------------------------
for <var> in <list>
do
command
done
#-------------------------------------
for i in dog cat elephant 
do 
echo $i
done
#-------------------------------
seq 1 5 
for num in `seq 1 5`
do 
echo $num
done
#--------------------------------
{A..Z}
{1..10}

for d in $(<data_file)

for j in *.c

for f in  $(find . -name *.c)

: 'dsjfjds
dsjfnjnf
sfjsndfke
'
# this is also comment
0-> stdin, 1-> stdout, 2-> stderr

command &> file 

command | command2

command 2>&1 | command2

command |& command2

command >> file
command &>> file
#----------------------
sort <<END
cherry
bana
app
END
#-------------------------
exec N< myfile
exec N> myfile
exec N<> myfile
exec N>&- or exec N<&-
exec 7>/tmp/myfile7
lsof -p $$
#-----------------------------------
case expression in 
	pattern 1 )
	command list;;
	pattern 2 )
	command list ;;
esac
#---------------------------------------
case $ans in 
	yes|YES|y|Y|y.x ) echo "will do !";;
	n*|N*) echo "will NOT do!";;
	*) echo "Oops!";;
	esac
#-------------------------------------
if 
command list #last result is used 
then 
command list
else 
command list
fi
#----------------------------------------------	
awk '{print}' emp.txt

awk '/manager/ {print}' emp.txt
awk '{print $1,$4}' emp.txt

