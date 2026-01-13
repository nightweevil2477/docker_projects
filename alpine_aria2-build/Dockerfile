# Built using image
FROM hurlenko/aria2-ariang

# Install packages 
RUN apk add --no-cache bash curl

# Set environment variables
ENV PUID=1000 
ENV PGID=1000
ENV ARIA2RPCPORT=6800

# Expose the port (RPC Port)
EXPOSE 8080/tcp
EXPOSE 6800/tcp

# Docker health
HEALTHCHECK --interval=30s --timeout=10s --retries=3 CMD curl --fail http://localhost:8080/ || exit 1  
