# Built using image
FROM dockurr/macos

# Set environment variable
# OS
ENV VERSION=14

# Specs (Min)
#ENV RAM_SIZE="8G"
#ENV CPU_CORES="4"
#ENV DISK_SIZE="25G"

# Expose the port (OS GUI Port)
EXPOSE 8006/tcp

# Docker health
HEALTHCHECK --interval=30s --timeout=10s --retries=3 CMD curl --fail http://localhost:8086/ || exit 1  