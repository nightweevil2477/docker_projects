# Built using image
FROM portainer/portainer-ce:latest

# Expose port (Web UI)
EXPOSE 9443/tcp

# Docker health
HEALTHCHECK --interval=30s --timeout=10s --retries=3 CMD nc -z localhost 9443/tcp || exit 1