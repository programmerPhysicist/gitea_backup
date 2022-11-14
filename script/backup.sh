#!/bin/bash

# Path variables
backup_folder="/home/git/gitea-backup"
gitea="/home/git/gitea/gitea"
working_dir="/home/git/"
remote_dir=/gitea_backup

# Create backup file from gitea
su - git -c ""$gitea" dump -c /home/git/gitea/custom/conf/app.ini"
su - git -c "mv "$working_dir"/gitea-dump-* "$backup_folder""
