#!/bin/sh
HOSTNAME=`hostname --fqdn`
docker build -t mbologna/docker-znc . && docker push mbologna/docker-znc && sed -i -e "s/host.name.tld/$HOSTNAME/g" ssmtp.conf && docker build -t mbologna/docker-znc -f Dockerfile.mbologna . && git checkout ssmtp.conf
