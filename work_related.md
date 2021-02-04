# Office Work Related
 
 ```{.sh}
 sudo pssh -p 1 -h /hostsonly -O StrictHostKeyChecking=no -l  evertz  -A -i "tail -5 /var/log/evertz/hbrmt.txt"
 less /var/log/evertz/hbrmt.txt
 vi /usr/ort/bin/config/0/stream.xml
 vi /usr/ort/bin/config/1/stream.xml
 ```

- checking the version of the ORT `cat /version`
- search id number inside turbine folder `zgrep -e 158020783 *`
- Delete the java version `sudo apt-get remove oracle-java8-installer`
- site command for play the material with multiple subtitle  

```{.sh}
 site ASYNC_VCUE /1080/videos/TEST_1406_6.mxf +cue 0 +layer BACKGROUND_A +port 1 +caption {ENG:/1080/captions/TEST_1406_6_eng.stl,SPA:/1080/captions/TEST_1406_6_las.stl}   site VPLAY /1080/videos/TEST_1406_6.mxf +layer BACKGROUND_A +port 1
 site vcue materialId
 site vplay materialId
 site show  sources
```

##### Salt commands

 ```{.sh}
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
 ```

- If deploy not work using source tree `sudo salt -N medx state.apply mediator.configuration_distribution ..`
- Find the material of 0 bytes size `find . -name 'file*' -size 0 -print0 | xargs -0 rm`

- Ts stream for record the material from stream.xml `<sink type="file" filename="/1080/test_chileEnglish55.ts"/>`

- script for search files have .mxf and .xml with same mat id:

```{.sh}
for entry in "."/*.xml
      do
      #echo $entry
      name=$(echo "${entry%.*}")
      #echo $name
         if [ -f "$name.mxf" ];then
            echo "done: $entry"
            ls -ltrh $name.mxf
         fi
      done
```
