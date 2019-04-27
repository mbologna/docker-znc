#!/bin/sh

docker build -t mbologna/docker-znc .
docker push mbologna/docker-znc
HOSTNAME=`hostname --fqdn`
sed -i -e "s/host.name.tld/$HOSTNAME/g" ssmtp.conf
git update-index --assume-unchanged ssmtp.conf
docker build -t mbologna/docker-znc -f Dockerfile.mbologna .
