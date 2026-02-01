# Built using image
FROM dockurr/windows

# Set environment variable
# OS
ENV VERSION=10

# Specs (Min)
#ENV RAM_SIZE="2G"
#ENV CPU_CORES="2"
#ENV DISK_SIZE="20G"

# Expose the port (OS GUI Port)
EXPOSE 8006/tcp
EXPOSE 3389/tcp

# Docker health
HEALTHCHECK --interval=30s --timeout=10s --retries=3 CMD curl --fail http://localhost:8086/ || exit 1  