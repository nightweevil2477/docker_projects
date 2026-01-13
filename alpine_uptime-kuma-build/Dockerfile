# Built using image
FROM louislam/uptime-kuma

# Expose the port (Web UI)
EXPOSE 3001/tcp

# Docker health
HEALTHCHECK --interval=30s --timeout=10s --retries=3 CMD nc -z localhost 3001  || exit 1  
