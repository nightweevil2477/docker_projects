# Built using image
FROM quantumentangledandy/neolink

# Install packages
RUN apt update && apt install bash netcat-traditional -y

# Set environment variables
ENV NEO_LINK_MODE=rtsp
ENV NEO_LINK_PORT=8554

# Docker health
HEALTHCHECK --interval=30s --timeout=10s --retries=3 CMD nc -z localhost 8554 || exit 1
