FROM restic/restic@sha256:9c851e0ba8a9c20ef853ee507af14c4d87c33661c25136262e97506a1cdc7a57
COPY bin/* /usr/local/bin/
WORKDIR /usr/local/bin
ENV RESTIC_CRON="12 * * * *"
ENV RESTIC_CRON_COMMAND="/usr/local/bin/restic-backup.sh"
ENTRYPOINT /usr/local/bin/restic-cron.sh
