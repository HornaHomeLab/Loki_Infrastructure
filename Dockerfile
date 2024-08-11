### DESCRIPTION
# Docker file to create image for Grafana Loki.

### INPUTS

### CHANGE LOG
# Author:   Stanisław Horna
# GitHub Repository:  https://github.com/HornaHomeLab/Loki_Infrastructure.git
# Created:  11-Aug-2024
# Version:  1.0

# Date            Who                     What
#

FROM grafana/loki:2.9.0

USER root

RUN apk add curl

# Set timezone
ENV TZ="Europe/Warsaw"
RUN apk add --no-cache tzdata

ENTRYPOINT ["/usr/bin/loki"]
CMD ["-config.file=/etc/loki/config.yaml"]