# Gitea backup
The backup.sh bash script can backup the [gitea server](https://gitea.io/en-us/) repositories by using the [gitea dump command](https://docs.gitea.io/en-us/backup-and-restore/).

**Disclaimer: I have nothing to do with the gitea project, this is only my way to backup my private gitea repositories. Forked from [julvei/gitea_backup](https://github.com/julvei/gitea_backup) for my needs.**  

**Be careful: This script has not been made fail-safe, so be sure you know what this script is doing and which files and folders have to be available. I am planning to make the script better in the future.**

## Script Configuration
Following steps have to be done in order to make this script running:
* Gitea username is named `git`.
* The script is running by root. **Be careful, root has all rights, so be sure you know what you are doing in the script!**
* Create a backup folder and provide the path via `backup_folder`.
* Define the gitea base path via `gitea`.
* Define the working directory (where the gitea-backup folder and gitea is located) via `working_dir`.
* Define how long the history of gitea backups should be with the `nr_backups` tag.

## Schedule the script
In order to do a regular backup of your gitea repositories, schedule to run the script regulary with [crontab](https://www.man7.org/linux/man-pages/man5/crontab.5.html) which should be available in most of the linux distributions. Schedule it for example once a day by running `sudo crontab -e` and configure the crontab schedule with the path to the script. By running crontab with sudo, you make sure the script is executed by root.  

Please feel free to ask questions or to add issues.
