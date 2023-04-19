# Create Backup Task

It will back up the home directory of all users in the system, the name of the backup file will be the name of the user and the backup date and time. The backup directory will be /mnt; this should be assigned to a variable and the backup file should have an md5 verification file in the same directory. The backup should be done automatically every day at 23:05 at night. Under the /tmp directory, create a log file of the last time this script ran.

# List User

![ListUser](https://raw.githubusercontent.com/eyupfidan/bash-script/main/odev1/assets/ListUser.png)

# List Directory

![ListDirectory](https://raw.githubusercontent.com/eyupfidan/bash-script/main/odev1/assets/List%20Directory.png)

# Execute Bash Script And Enter Mnt Folder

![Execute](https://raw.githubusercontent.com/eyupfidan/bash-script/main/odev1/assets/Execute%20Sh%20and%20List%20Mnt.png)

# Tar File Md5 Sum Hash

![Tar](https://raw.githubusercontent.com/eyupfidan/bash-script/main/odev1/assets/Md5%20Sum%20.png)

# Open Tar File (Only Home Directory Backup)

![Home](https://raw.githubusercontent.com/eyupfidan/bash-script/main/odev1/assets/Open%20Tar%20File%20See%20Home%20Directory.png)

# Cronjob Config (Only 23:05)

![Cronjob](https://raw.githubusercontent.com/eyupfidan/bash-script/main/odev1/assets/Cronjon%20Config.png)

# Create Log File

![Log](https://raw.githubusercontent.com/eyupfidan/bash-script/main/odev1/assets/backup-log.png)
