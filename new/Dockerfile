FROM python:3.8

# Copy all Python scripts into the container
COPY 1.py /scripts/1.py
COPY 2.py /scripts/2.py
COPY 3.py /scripts/3.py
COPY 4.py /scripts/4.py
COPY 5.py /scripts/5.py

# Install cron
RUN apt-get update && apt-get -y install cron

# Copy cron job file
COPY cronjob /etc/cron.d/cronjob

# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/cronjob

# Apply cron job
RUN crontab /etc/cron.d/cronjob

# Create log file
RUN touch /var/log/cron.log

# Run cron in the foreground
CMD cron && tail -f /var/log/cron.log
