#!/bin/bash
# check for non-existent file, exit status will be 2
ls SoMeFile.ext
echo "status: $?"
# create file and do again  exit status will be 0
touch SoMeFile.ext
ls SoMeFile.ext
echo "status: $?"
# remove the file to clean up
rm SoMeFile.ext
