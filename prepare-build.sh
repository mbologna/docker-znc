#!/bin/sh

HOSTNAME=`hostname --fqdn`
sed -i -e "s/host.name.tld/$HOSTNAME/g" ssmtp.conf
docker build -t mbologna/docker-znc .

