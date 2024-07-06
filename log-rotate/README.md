# Log Rotation Script

## Description

This script archives a log file if its size exceeds a maximum size provided by the user. It moves the current log file to an archive directory, creates a new empty log file, and optionally compresses the archived log file.

## Usage

To run the script, execute the following command in your terminal:

```bash
./log-rotate.sh -s <maxsize>

