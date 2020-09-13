# fetch the mounts in servers using command
 setupnetfilesystems
# Check mediaclient service status like service ort status
 mcstatus
# Check the version of python on mediator x ORT’s.
 dpkg -l | grep evertz  
# install a command version 
 sudo apt-get install libmediainfo0=0.7.99-1
# check the dependencies on a particular command
 apt-cache depends mediainfo 
#For unpackage and install the pharos package 
 dpkg  -i pharos_package
# finding the 20 files which are having max size  
 find / -xdev -type f -size +100000c -exec ls -la {} \; 2>/dev/null | sort -nk5 | tail -20
# run a command in multiple ORT’s
 sudo pssh -p 1 -h /hostsonly -O StrictHostKeyChecking=no -l  evertz  -A -i "tail -5 /var/log/evertz/hbrmt.txt"
 less /var/log/evertz/hbrmt.txt
 vi /usr/ort/bin/config/0/stream.xml
 vi /usr/ort/bin/config/1/stream.xml
# For checking the version of the ORT  
 cat /version
# For delete the java version 
 sudo apt-get remove oracle-java8-installer
#----------------------------------------------------------------------------------------------------------------------------
 site command for play the material with multiple subtitle  
 site ASYNC_VCUE /1080/videos/TEST_1406_6.mxf +cue 0 +layer BACKGROUND_A +port 1 +caption {ENG:/1080/captions/TEST_1406_6_eng.stl,SPA:/1080/captions/TEST_1406_6_las.stl}   site VPLAY /1080/videos/TEST_1406_6.mxf +layer BACKGROUND_A +port 1
 site vcue materialId
 site vplay materialId
 site show  sources
#-----------------------------------------------------------------------------------------------------------------------------   
 sudo kill -9 mdss-process-id
 sudo service mdss start
 /usr/ort/bin/config/0/mdss.xml
 /usr/ort/bin/config/1/mdss.xml
 /var/log/evertz/mdss.0.txt
 /var/log/evertz/mdss.1.txt
# -----------------------------------------------------------------------------------------------------------------------------
# Salt commands:
 sudo salt-run jobs.active # for check high state status
 sudo salt-call state.highstate
 sudo salt '*' saltutil.refresh_grains
 sudo salt '*' saltutil.sync_grains
 sudo salt -G 'is_mediatorx:True' test.ping 
 sudo salt ‘*’ test.ping
 sudo salt-run manage.status
 sudo salt-run -d
 ls -l /var/cache/salt/master/minions/
 salt ‘*’ status.all_status
 salt ‘*’ status.cpuinfo
 salt ‘*’ status.cpustats
 salt ‘*’ status.time 
 sudo salt '*' cmd.run "grep 'Search_string' /var/log/mediator/filename"
#-----------------------------------------------------------------------------------------------------------------------------

# If deploy not work using source tree 
 sudo salt -N medx state.apply mediator.configuration_distribution ..
#command to deploy sysman changes if deploy config is not working

#-----------------------------------------------------------------------------------------------------------------------------
# Find the material of 0 bytes size:
 find . -name 'file*' -size 0 -print0 | xargs -0 rm
# Command for downgrade the mediainfo version
 sudo apt-get install mediainfo=0.7.94-1
 sudo apt-get install libmediainfo0:amd64=0.7.94-1

# Ts stream for record the material from stream.xml
# <sink type="file" filename="/1080/test_chileEnglish55.ts"/>
