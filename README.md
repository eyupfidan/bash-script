# Backup System Homework

This repository contains two scripts for the Backup System homework assignment:

- `createbackup.sh`: A backup script for backing up specified files to a specified destination directory and calculating the MD5 checksum of the archive file.
- `disk-space-alert.sh`: A script for monitoring disk space usage and sending email alerts if disk space usage exceeds a specified threshold.

## Prerequisites

- Bash shell (version 4 or later)
- `df` and `awk` commands for `disk-space-alert.sh`
- Configuration file `/config/createbackup.conf` for `createbackup.sh`

## Usage

### `createbackup.sh`

1. Copy `createbackup.sh` and `/config/createbackup.conf` files to the same directory.
2. Edit the configuration file `/config/createbackup.conf` to specify the files to be backed up and the destination directory.
3. Run the script with the command `./createbackup.sh`.

### `disk-space-alert.sh`

1. Copy `disk-space-alert.sh` to the desired directory.
2. Make the script executable with the command `chmod +x disk-space-alert.sh`.
3. Run the script with the command `./disk-space-alert.sh`.

## Author

- [Eyup Fidan]

## License

This project is licensed under the [MIT License](LICENSE).
