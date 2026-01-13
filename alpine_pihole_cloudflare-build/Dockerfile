# Built using image
FROM pihole/pihole:latest

# Install packages 
RUN apk add --no-cache bash

# Set environment variables
ENV TZ=Australia/Darwin
ENV FTLCONF_dns_listeningMode=all
ENV FTLCONF_dns_upstreams='1.0.0.1;1.1.1.1'
ENV WHITELIST="bam.nr-data.net,conduit.redfast.com,tags.tiqcdn.com,cdn.cookielaw.org"

# Docker health
HEALTHCHECK --interval=30s --timeout=10s --retries=3 CMD curl --fail http://localhost/admin/ || exit 1
