FROM debian:latest
MAINTAINER DevOps <devops@kendu.si>

RUN for dir in app framework logs ; do \
      mkdir -p /var/app/${dir} ; \
    done ; \
    for dir in cache sessions views ; do \
      mkdir -p /var/app/framework/${dir} ; \
    done ; \
    chown -R www-data /var/app


VOLUME ["/var/app"]
