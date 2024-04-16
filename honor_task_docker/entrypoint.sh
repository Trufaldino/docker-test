#!/bin/bash

# Schedule the execution of 1.py at 12:00
echo "18 16 * * * python /scripts/1.py" > /etc/cron.d/1py-cron

# Start cron service
service cron start

# Keep container running
tail -f /dev/null
