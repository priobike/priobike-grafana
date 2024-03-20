FROM grafana/grafana:10.3.4

COPY provisioning /etc/grafana/provisioning

COPY grafana.ini /etc/grafana/grafana.ini
