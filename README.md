
# Disk Monitor

A Bash script that monitors disk usage and detects folders exceeding a defined size limit.

## What it does
- Scans folders in the home directory
- Identifies folders exceeding the defined GB limit
- Displays results sorted from largest to smallest
- Saves a dated report automatically

## Why it matters in security
Large unexpected folders can indicate:
- Data exfiltration attempts
- Malware storing files
- Unauthorized software installations

## Usage
```bash
chmod +x disk-monitor.sh
./disk-monitor.sh
```

## Output example
