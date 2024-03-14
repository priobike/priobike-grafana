FROM grafana/grafana:9.5.3

COPY provisioning /etc/grafana/provisioning

COPY grafana.ini /etc/grafana/grafana.ini