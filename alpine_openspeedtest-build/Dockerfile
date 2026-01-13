# Built using image
FROM openspeedtest/latest

# Set environment variables
ENV HTTP_PORT=3000
ENV HTTPS_PORT=3001

# Expose the port (Web UI Port)
EXPOSE 3000/tcp
EXPOSE 3001/tcp

# Docker health
HEALTHCHECK --interval=30s --timeout=10s --retries=3 CMD nc -z localhost 3000/tcp && nc -z localhost 3001/tcp || exit 1