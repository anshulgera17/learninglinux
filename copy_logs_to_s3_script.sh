#!/bin/bash

# AWS S3 bucket name
S3_BUCKET="s3://twarit-tcp-logs"

# Get the current date in YYYYMMDD format
CURRENT_DATE=$(date +%d%m%Y)

WORK_DIR="/var/tcpip/logs/"

# Log file path
LOG_FILE="${WORK_DIR}copy_to_s3.log"

# Function to log messages with timestamp
log_message() {
  echo "$(date +'%Y-%m-%d %H:%M:%S') - $1" | tee -a $LOG_FILE
}

# Log the start time of the script
log_message "Script started"

# Find all directories with date format name that are older than 15 days
# Assuming directories are in the current directory
FOLDERS=$(find $WORK_DIR -maxdepth 1 -type d -mtime +15)

# Loop through each folder and copy to S3 bucket
for FOLDER in $FOLDERS; do
  # Remove the leading ./ from folder name
  FOLDER_NAME=$(basename "$FOLDER")

  # Log the folder being copied
  log_message "Starting copy of folder $FOLDER_NAME"

  # Copy the folder recursively to S3 with current date folder name
  /usr/local/bin/aws s3 cp "$WORK_DIR/$FOLDER_NAME" "$S3_BUCKET/$CURRENT_DATE/$FOLDER_NAME/" --recursive
	#echo $FOLDERS
	#echo "---------======-------"
	#echo $FOLDER_NAME
	#echo "*************************"
  # Check if the copy was successful
  if [ $? -eq 0 ]; then
    log_message "Successfully copied $FOLDER_NAME to $S3_BUCKET/$CURRENT_DATE/"
    /usr/bin/rm -rf $WORK_DIR/$FOLDER_NAME
  else
    log_message "Failed to copy $FOLDER_NAME to $S3_BUCKET/$CURRENT_DATE/"
  fi
done

# Log the end time of the script
log_message "Script finished"
