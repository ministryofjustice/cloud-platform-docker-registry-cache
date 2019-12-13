FROM registry:2

MAINTAINER MoJ Cloud Platform Team "platforms@digital.justice.gov.uk"

RUN addgroup -g 1000 -S appgroup && \
    adduser -u 1000 -S appuser -G appgroup

RUN mkdir -p /var/lib/docker-cache
RUN chown -R appuser:appgroup /var/lib/docker-cache

COPY config.yml /etc/docker/registry/config.yml
COPY disk-usage-high /usr/local/bin

EXPOSE 5000
USER 1000

CMD ["/etc/docker/registry/config.yml"]
