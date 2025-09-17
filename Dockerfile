FROM alpine:latest

RUN apk add --no-cache rsync rsnapshot

COPY src/crontab.sh /var/spool/cron/crontabs/root
COPY src/entry.sh /srv/entry.sh
COPY src/wakeup.sh /srv/wakeup.sh
COPY src/cooldown.sh /srv/cooldown.sh
COPY src/rsnapshot.conf /srv/rsnapshot.conf

VOLUME /out
VOLUME /in
WORKDIR /srv

ENTRYPOINT ["sh", "-c", "/srv/entry.sh"]
