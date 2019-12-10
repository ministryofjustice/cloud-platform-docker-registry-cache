FROM registry:2
MAINTAINER MoJ Cloud Platform Team "platforms@digital.justice.gov.uk"
EXPOSE 5000
COPY config.yml /etc/docker/registry/config.yml
CMD ["/etc/docker/registry/config.yml"]
