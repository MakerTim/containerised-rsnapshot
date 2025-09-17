#!/usr/bin/env sh

echo 'testing file'
/usr/bin/rsnapshot -D -c /srv/rsnapshot.conf configtest

echo 'force daily run'
(cd /srv && /usr/bin/rsnapshot -c /srv/rsnapshot.conf daily) || true

echo 'starting crond'
/usr/sbin/crond -f -l 0
