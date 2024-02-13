FROM grafana/grafana:9.5.3 as builder

# see https://github.com/grafana/grafana/blob/v9.5.3/Dockerfile
ARG GF_UID="472"
ARG GF_GID="0"

COPY provisioning /etc/grafana/provisioning

COPY data /var/lib/grafana

COPY setup.sh /setup.sh
USER root
RUN ["chmod", "+x", "/setup.sh"]
USER "$GF_UID"

RUN /run.sh & /setup.sh

FROM grafana/grafana:9.5.3 as runner

# see https://github.com/grafana/grafana/blob/v9.5.3/Dockerfile
ARG GF_UID="472"
ARG GF_GID="0"

COPY --from=builder /var/lib/grafana /var/lib/grafana
COPY --from=builder /etc/grafana/provisioning /etc/grafana/provisioning

USER root
RUN chown -R "$GF_UID":"$GF_GID" /var/lib/grafana
USER "$GF_UID"
