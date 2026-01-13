# Built using image
FROM docker.n8n.io/n8nio/n8n

# Expose port (Web UI)
EXPOSE 5678/tcp

# Docker health
HEALTHCHECK --interval=30s --timeout=10s --retries=3 CMD curl --fail http://localhost:5678/ || exit 1 
