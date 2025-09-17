# do daily/weekly/monthly maintenance
# min   hour    day     month   weekday command
*       *       *       *       *       (echo "$(date)") >> /proc/1/fd/1
0       0       *       *       *       (cd /srv; /usr/bin/rsnapshot -c /srv/rsnapshot.conf daily) >> /proc/1/fd/1
20      0       */7     *       *       (cd /srv; /usr/bin/rsnapshot -c /srv/rsnapshot.conf weekly) >> /proc/1/fd/1
40      0       1       *       *       (cd /srv; /usr/bin/rsnapshot -c /srv/rsnapshot.conf monthly) >> /proc/1/fd/1
59      0       1       1       *       (cd /srv; /usr/bin/rsnapshot -c /srv/rsnapshot.conf yearly) >> /proc/1/fd/1
