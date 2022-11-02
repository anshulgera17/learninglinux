# Basic Linux Commands for learning purpose

- `#!/bin/bash`  shebang line
- `#!/bin/sh`  this is also shebang line
- `pwd` print working directory
- `ls` list all directory and files `ls -l` `ls -la` `ls -ltrh` `ls -ltrhS`
- `cd folder_name` change directory
- `cd ..` p1 level in directory
- `cp`  copy `cp filename destinationpath` `cp abc.txt /home/user/` `cp /home/user/abc.txt /tmp/new_abc.txt` `cp abc.txt ../../`
- `rm`  remove or delete a file `rm abc.txt`
- `mv`  moves a file one name to another or rename
- `mkdir` make directory `mkdir folder/directory name`
- `rmdir` remove directory
- `touch` is often used to set or update the access, change, and modify times of files, however you can also create empty file using touch `touch filename` `touch -t 202012091600 myfile` 09 Dec 2020 16:00 myfile timestamp
- `tree` display a tree view of the filesystem `tree -d` for directories
- `head` print first 10 lines of the file
- `history` print recently used commands
- `man` for searching information about commands `man -k compress` `man -a foo` `man -f foo`
- `cat` concatenate files and print on the standard output
- `echo` display a line of text
- `grep` print lines matching a pattern
- examples of grep  `grep -r 'string'`, `egrep`, `zgrep -e`, `grep -v pattern filename`, `grep [0-9] filename`, `grep -C 3 pattern filename`
- `strings` strings is used to extract all printable character strings found in the file or files given as arguments. It is useful in - locating human-readable content embedded in binary files; for text files one can just use grep.
- `tr` translate or delete characters , `cat city | tr [a-z] [A-Z], tr '{}' '[]' inputfile outputfile`
- `tee` tee takes the output from any command, and, while sending it to standard output, it also saves it to a file. `find -name "g*cfs" | tee /tmp/tee_output`
- `wc` print the number of newlines words and bytes in files
- `uniq` uniq removes duplicate consecutive lines in a text file and is useful for simplifying the text display. `sort file1 file2 |  uniq > file3, uniq -c filename`
- `chmod` change file access permission
- `chown` change file owner and group
- `su`    change user id or become super user
- `passwd` update a user's authentication token's
- `who` show who is logged on
- `ps`  report a snapshot of current process
- `kill` kill a process
- `lsattr`  shows file attributes 
- `chattr +i filename` using this command, no one can delete this file, for delete you need to change attribute first
- `chattr +a filename` using this command, can only append this file not overwrite
- `curl` tool for transferring data using various network protocols, and for download content using url `curl -o address`
- `top`, `htop` check process status
- `ssh` ssh client remote login program
- `scp` secure copy or remote file copy
- `fdisk` partition manipulator
- `tail` print last 10 lines of a file.
- `free` to check the RAM of a server
- `du -sch folder_name` check directory size `du -sch /etc`
- `du -sch /home/anshul/*  | sort -h` show all sub folders size with sorted format
- `nproc` number of CPUs in a server.
- `cut` cut is used for manipulating column-based files and is designed to extract specific columns. `ls -l | cut -d" " -f3`
- `paste` combine fields(such as name or phone number from different files) `paste file1 file2`, `paste -d file1 file2`
- `join` combine fields if similar columns are their in files `join file1 file2`
- `split` split file in 100 equal-sized segments `split filename` 
- `diff` identify the deferences between 2 files
- `diff3` compare 3 files 
- `patch` 
- `file filename` tells us which type of file it is linux is not dependent on extension of files `file *`
- `rsync` is a very powerful utility. For example, a very useful way to back up a project directory might be to use the following command:

``` { .sh }
    rsync -r project-X archive-machine:archives/project-X
    rsync --progress -avrxH  --delete sourcedir destdir
```

- `more` to view content of a file and navigate through file
- `less` to view content of a file and navigate through file, less is faster because it didn't load whole file at once
- `host google.com` will show the ip address of the url
- `nslookup google.com` will show the url details
- `dig google.com` tests DNS workings. A good replacement for host and nslookup
- `ifconfig` to check ip details of network of server
- `ip` to check network details of server `ip addr`, `ip route`, `ip route show`
- `route -n` shows the routing table of the server
- `traceroute google.com` To print the route taken by the packet to reach the network host
- `ethtool` queries network interfaces and can also set various parameters such as speed
- `netstat` Displays all active connections and routing tables. Useful for monitoring performance and troubleshooting
- `nmap` Scans open ports on a network. Important for security analysis
- `tcpdump` Dumps network traffic for analysis
- `iptraf` Monitors network traffic in text mode
- `mtr` Combines functionality of ping and traceroute and gives a continuously updated display
- `lynx, elinks, w3m` NON graphical browsers for linux  
- `ftp, sftp, ncftp, yafc`(yet another FTP client) FTP clients enable you to transfer files with remote computers using the FTP protocol
- `zcat compressed-file.txt.gz`	To view a compressed file
- `zless somefile.gz` To page through a compressed file
    or
- `zmore somefile.gz` To page through a compressed file
- `zgrep -i less somefile.gz` To search inside a compressed file
- `zdiff file1.txt.gz file2.txt.gz` To compare two compressed files
- `useradd`, `sudo useradd -m -c "Anshul gera" -s /bin/bash anshul` create user
- `sudo passwd anshul` add password for user
- `userdel`, `sudo userdel -r anshul` delete user
- `groupadd` :
- `groupdel` :
- `env` :
- `set` :
- `export` :
- `echo PS1` prints how you are promting the name of host and current working directory \u Username, \h hostname, \w current working dir, \! history number of this command, \d date
- `sudo systemctl stop gdm` (or `sudo telinit 3`) close the GUI graphical user interface using this command
- `halt``poweroff` for halt the system
- `sudo shutdown -h 10:00 "Shutting down for scheduled maintenance."` for restart the server or node `shutdown -r` `reboot`
- `which diff` locate the program on filesystem
- `whereis diff` locate packages of the program
- `locate filename` for find file in the system you can use locate command also
- `locate -e filename` find the file name in server
- `last reboot` check last reboot
- `last` shows the last time each user logged into the system
- `ftp hostname`
 or
- `ftp://username:password@hostname`
- `dd` disk to disk copying `dd if=/dev/sda of=sda.mbr bs=512 count=1`

## bc command is used for decimal involved calculation expr and normal operators won't work
- `echo "20.5+5" | bc`
- `echo "20.5-5" | bc`
- `echo "20.5*5" | bc`
- `echo "scale=2;20.5/5" | bc`


## sort command uses

- `sort` sort lines of text file
- `sort filename` sort the lines in the specified file, according to the character at the beginning of each line
- `sort -r filename` sort the lines in reverse order
- `sort -k 3 filename` sort the lines by the 3rd field on each line instead of the beginning
- `sort -u filename` checks for the unique values after sorting the records

## Find Command uses

- `find` for search file in system `sudo find . -name "*.log"` `find /usr -name gcc` `find /usr -type d -name gcc` `find /usr -type f -name gcc` `find -name "*.swp" -exec rm {} ';'` `find / -ctime 3` -ctime last changed, -atime last accessed, -mtime modified/last written `find / -size 0` `find / -size +10M -exec command {} ’;’`
- `find / -xdev -type f -size +100000c -exec ls -la {} \; 2>/dev/null | sort -nk5 | tail -20` find the 20 files which are having max size 
- `find /etc -not -iname "*.conf"` find files in etc directory not with .conf and ignore case also
- `find /usr/bin -size +2M` find files which are more than 2MB in /usr/bin directory
- `find /home/anshul/ -name "*.txt" -exec chmod 700 {} \;` find .txt file and then modify their permission using chmod 
- `find . -name "*.txt" -exec grep -i "any word" {} \;` Find any word in unknown file
- `find /path/to/directory/ -mindepth 1 -mtime +5 -delete` Delete files and folder which are older than 5 days

## sed command uses

- `sed` used for modifying the files
- `sed s/pattern/replace_pattern/' filename` substitute the first string occurance in every line
- `sed 1, 3s/pattern/replace_pattern/' filename` substitute all string occurance in range of lines
- `sed 's/s/S/g' filename > another_file` all small s make capital S in the file
- `sed 's/"//g' filename > another_file` all remove all double quotes
- `sed 's/$/,/g' filename > another_file` add coma at end of the each line
- `sed -i s/pattern/replace_pattern/g' filename` save changes for string substitution in the same file
- NF - from line number, NT to line number, p for print, !d for not delete

## awk command uses

- `awk` Awk is a scripting language used for manipulating data and generating reports.The awk command programming language requires no compiling, and allows the user to use variables, numeric functions, string functions, and logical operators.
- `awk '{ print $0 }' /etc/passwd`  print entire file
- `awk -F: '{ print $1 }' /etc/passwd`  print first field(column) of every line, seperated by a space
- `awk -F: '{ print $1 $7 }'/etc/passwd` print first and seventh field of every line

## archive command uses

- `tar` archive a file, tar stood for "tape archive" `tar cvzf data_backup.tar.gz .` compress all the files present in current folder
- `tar cvzf data_backup.tar.gz --exclude=text.txt .` compress all the files present in current folder exclude test.txt file, 
- `tar cvf data_backup.tar .`
- `tar -tvf file.tar` Inside .tar file you can see how files are their 
- `tar -tvf file.tar | grep test` Search inside .tar test file 
- `tar zxvf filename.tar.gz` unzip files
- `tar xvf mydir.tar` Extract all the files in mydir.tar into the mydir directory
- `tar zcvf mydir.tar.gz mydir` Create the archive and compress with gzip
- `tar jcvf mydir.tar.bz2 mydir` Create the archive and compress with bz2
- `tar Jcvf mydir.tar.xz mydir` Create the archive and compress with xz
- `tar xvf mydir.tar.gz` Extract all the files in mydir.tar.gz into the mydir directory
- `zip` package and compress(archive) files
- `unzip` list, test and extract compressed files in a zip archive
- `gzip` The most frequently used Linux compression utility `gzip data_backup.tar` `gzip *` `gzip -r projectX`
- `gunzip foo` De-compresses foo found in the file foo.gz. Under the hood, the gunzip command is actually the same as `gzip –d`
- `bzip2` Produces files significantly smaller than those produced by gzip `bzip2 *`
- `bunzip2 *.bz2` Decompresses all of the files with an extension of .bz2 in the current directory. Under the hood, `bunzip2` is the same as calling `bzip2 -d`
- `xz` The most space-efficient compression utility used in Linux `xz *` `xz foo`
- `xz -dk bar.xz` `xz -dcf a.txt b.txt.xz` `xz -d *.xz`
- `zip`	Is often required to examine and decompress archives from other operating systems `zip backup *` `zip -r backup.zip ~`
- `unzip backup.zip` Extracts all files in backup.zip and places them in the current directory

## Package installation commands

- `dpkg` or `rpm` low level package manager, `apt`, `yum`, `zypper` or `dnf` are high level package manager
- `apt-get` package management,(apt)advanced packaging tool for debian `apt-get install foo`, `apt-get update foo`, `apt-get delete foo` `apt-get autoremove foo` `apt-get dist-upgrade` update entire system `apt-cache search foo` show packages named foo `apt-cache dumpavail foo` show all available packages 
- `yum` package management for redhat `yum install foo` `yum remove foo` `yum update foo` `yum update` `yum list "foo"` `yum list`
- `rpm` `rpm -i foo.rpm` `rpm -e foo.rpm` `rpm -U foo.rpm` `rpm -qa` `rpm -qil foo` `rpm -qf file` `rpm -q -whatprovide foo`
- `dpkg` `dpkg --install foo.deb`  `dpkg --remove foo.deb` `dpkg --list` `dpkg --listfiles foo` `dpkg --search file`

## Now, once connected the 5 most common options are

- `cd foldername`      e.g. cd /downloads/recent
- `get filename`       e.g. get thisisthefileiwant.text
- `put filename`       e.g. put sendthistotheserver.txt
- `mget filenameregex` e.g mget * to get every file in a directory
- `mput filemameregex` e.g. mput *.txt to upload every txt file to the server

## Commands realted to printer

- `lp <filename>` To print the file to default printer
- `lp -d printer <filename>` To print to a specific printer (useful if multiple printers are available)
- `program | lp echo string | lp` To print the output of a program
- `lp -n number <filename>` To print multiple copies
- `lpoptions -d printer` To set the default printer
- `lpq -a` To show the queue status
- `lpadmin` To configure printer queues
- `lpstat -p -d` To get a list of available printers, along with their status
- `lpstat -a` To check the status of all connected printers, including job numbers
- `cancel job-id` or `lprm job-id` To cancel a print job
- `lpmove job-id newprinter` To move a print job to new printer
- `enscript -p psfile.ps textfile.txt` Convert a text file to PostScript (saved to psfile.ps)
- `enscript -n -p psfile.ps textfile.txt` Convert a text file to n columns where n=1-9 (saved in psfile.ps)
- `enscript textfile.txt` Print a text file directly to the default printer

## Commands related to PDF

- `pdf2ps file.pdf` Converts file.pdf to file.ps
- `ps2pdf file.ps` Converts file.ps to file.pdf
- `pstopdf input.ps output.pdf` Converts input.ps to output.pdf
- `pdftops input.pdf output.ps` Converts input.pdf to output.ps
- `convert input.ps output.pdf` Converts input.ps to output.pdf
- `convert input.pdf output.ps` Converts input.pdf to output.ps
- `qpdf --empty --pages 1.pdf 2.pdf -- 12.pdf` Merge the two documents 1.pdf and 2.pdf. The output will be saved to 12.pdf.
- `qpdf --empty --pages 1.pdf 1-2 -- new.pdf` Write only pages 1 and 2 of 1.pdf. The output will be saved to new.pdf.
- `qpdf --rotate=+90:1 1.pdf 1r.pdf`, Rotate page 1 of 1.pdf 90 degrees clockwise and save to 1r.pdf
- `qpdf --rotate=+90:1-z 1.pdf 1r-all.pdf` Rotate all pages of 1.pdf 90 degrees clockwise and save to 1r-all.pdf
- `qpdf --encrypt mypw mypw 128 -- public.pdf private.pdf` Encrypt with 128 bits public.pdf using as the passwd mypw with output as private.pdf
- `qpdf --decrypt --password=mypw private.pdf file-decrypted.pdf` Decrypt private.pdf with output as file-decrypted.pdf
- `pdftk 1.pdf 2.pdf cat output 12.pdf` Merge the two documents 1.pdf and 2.pdf. The output will be saved to 12.pdf.
- `pdftk A=1.pdf cat A1-2 output new.pdf` Write only pages 1 and 2 of 1.pdf. The output will be saved to new.pdf.
- `pdftk A=1.pdf cat A1-endright output new.pdf` Rotate all pages of 1.pdf 90 degrees clockwise and save result in new.pdf.
- `gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite  -sOutputFile=all.pdf file1.pdf file2.pdf file3.pdf` Combine three PDF files into one
- `gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dDOPDFMARKS=false -dFirstPage=10 -dLastPage=20\ -sOutputFile=split.pdf file.pdf`Split pages 10 to 20 out of a PDF file
- `pdfinfo` Extracts info about PDF document
- `flpsed` Adds data to PostScript
- `pdfmod` Provides GUI for PDF modification

## shortcuts for terminal

- History environment variables like HISTFILE, HISTFILESIZE, HISTSIZE, HISTCONTROL, HISTIGNORE
- CTRL-L: Clears the screen
- CTRL-D: Exits the current shell
- CTRL-Z: Puts the current process into suspended background
- CTRL-C: Kills the current process
- CTRL-H: Works the same as backspace
- CTRL-A: Goes to the beginning of the line
- CTRL-W: Deletes the word before the cursor
- CTRL-U: Deletes from beginning of line to cursor position
- CTRL-E: Goes to the end of the line
- Tab: Auto-completes files, directories, and binaries
