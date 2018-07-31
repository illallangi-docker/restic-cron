
#!/bin/sh

echo "${RESTIC_CRON} ${RESTIC_CRON_COMMAND}" > /var/spool/cron/crontabs/root
cat /var/spool/cron/crontabs/root
crond -f -d 8

