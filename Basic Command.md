#!/bin/bash
curl # tool for transferring data using various network protocols, and for download content using url curl -o address
apt-get install # package management
yum # package management
find # for search file in system
top, htop # check process status
netstat # displays network connections for Transmission Control Protocol, routing tables, and a number of network interface and network protocol statistics
ls   # list all directory and files
cd folder_name  # change directory
cd.. # p1 level in directory
pwd  # print working directory
cp   # copy
rm   # remove or delete a file
mv   # moves a file one name to another or rename
mkdir # make directory
rmdir # remove directory
touch # create new file in linux
head file_name # print first 10 lines of the file
history # print recently used commands
cat  # concatenate files and print on the standard output
echo # display a line of text
grep # print lines matching a pattern
examples of grep : grep -r 'string', egrep, zgrep -e
strings # strings is used to extract all printable character strings found in the file or files given as arguments. It is useful in locating human-readable content embedded in binary files; for text files one can just use grep.
tr # translate or delete characters , cat city | tr [a-z] [A-Z], tr '{}' '[]' inputfile outputfile, 
tee # tee takes the output from any command, and, while sending it to standard output, it also saves it to a file. find -name "g*cfs" | tee /tmp/tee_output
wc # print the number of newlines words and bytes in files
sort #sort lines of text file, sort filename, sort -r filename, sort -k 3 filename, sort -u filename  
uniq # uniq removes duplicate consecutive lines in a text file and is useful for simplifying the text display. sort file1 file2 | uniq > file3, uniq -c filename
chmod # change file access permission
chown # change file owner and group
su  # change user id or become super user
passwd # update a user's authentication token's
who # show who is logged on
ps  # report a snapshot of current process
kill # to kill a process
tar # to archive a file
zip # package and compress(archive) files
unzip  # list,test and extract compressed files in a zip archive
ssh # ssh client -remote login program
scp # secure copy or remote file copy
fdisk # partition manipulator
tail file_name # print last 10 lines of a file.
free # to check the RAM of a server
nproc #number of CPUs in a server.
cut # cut is used for manipulating column-based files and is designed to extract specific columns. ls -l | cut -d" " -f3
paste # combine fields(such as name or phone number from different files) $ paste file1 file2, $ paste -d file1 file2
join # combine fields if similar columns are their in files $ join file1 file2
split # split file in 100 equal-sized segments, $ split filename 
sed # used for modifying the files
awk # find and replaces text
diff # identify the deferences between 2 files
more # to view content of a file and navigate through file
less # to view content of a file and navigate through file, less is faster because it didn't load whole file at once
host google.com # will show the ip address of the url
nslookup google.com # will show the url details
dig google.com # Tests DNS workings. A good replacement for host and nslookup
ifconfig # to check ip details of network of server
ip # to check network details of server, ip addr, ip route, ip route show
route -n # shows the routing table of the server
traceroute google.com # To print the route taken by the packet to reach the network host
ethtool # queries network interfaces and can also set various parameters such as speed
netstat # Displays all active connections and routing tables. Useful for monitoring performance and troubleshooting
nmap # Scans open ports on a network. Important for security analysis
tcpdump # Dumps network traffic for analysis
iptraf # Monitors network traffic in text mode
mtr #Combines functionality of ping and traceroute and gives a continuously updated display
lynx, elinks, w3m # NON graphical browsers for linux  
ftp, sftp, ncftp, yafc(yet another FTP client) # FTP clients enable you to transfer files with remote computers using the FTP protocol
zcat compressed-file.txt.gz	# To view a compressed file
zless somefile.gz #	To page through a compressed file
or
zmore somefile.gz #	To page through a compressed file
zgrep -i less somefile.gz # To search inside a compressed file
zdiff file1.txt.gz file2.txt.gz #	To compare two compressed files
useradd # $ sudo useradd -m -c "Anshul gera" -s /bin/bash anshul
$ sudo passwd anshul
userdel # $ sudo userdel -r anshul
groupadd #
groupdel #
env #
set #
export #
echo PS1 # prints how you are promting the name of host and current working directory \u Username, \h hostname, \w current working dir, \! history number of this command, \d date
History environment variables like HISTFILE, HISTFILESIZE, HISTSIZE, HISTCONTROL, HISTIGNORE
CTRL-L	# Clears the screen
CTRL-D	# Exits the current shell
CTRL-Z	# Puts the current process into suspended background
CTRL-C	# Kills the current process
CTRL-H	# Works the same as backspace
CTRL-A	# Goes to the beginning of the line
CTRL-W	# Deletes the word before the cursor
CTRL-U	# Deletes from beginning of line to cursor position
CTRL-E	# Goes to the end of the line
Tab	# Auto-completes files, directories, and binaries