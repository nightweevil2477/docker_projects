# Built using image
FROM pihole/pihole:latest

# Install packages 
RUN apk add --no-cache bash

# Set environment variables
ENV TZ=Australia/Darwin
ENV FTLCONF_dns_listeningMode=all
ENV FTLCONF_dns_upstreams='103.86.96.100;103.86.99.100'

# Docker health
HEALTHCHECK --interval=30s --timeout=10s --retries=3 CMD curl --fail http://localhost/admin/ || exit 1
