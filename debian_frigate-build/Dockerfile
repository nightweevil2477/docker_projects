# Built using image
FROM ghcr.io/blakeblackshear/frigate:stable

# Install packages
RUN apt update && apt install bash netcat-traditional -y

# Set environment variables
ENV shm_size="128mb"

# Set a shared memory
RUN mkdir /tmp/cache

# Expose the necessary ports with protocols (Web UI / RTSP feeds /  WebRTC /  WebRTC (UDP))
EXPOSE 5000/tcp
EXPOSE 8554/tcp
EXPOSE 8555/tcp
EXPOSE 8555/udp

# Docker health
HEALTHCHECK --interval=30s --timeout=10s --retries=3 CMD nc -z localhost 5000 && nc -z localhost 8554 && nc -z localhost 8555/tcp && nc -z localhost 8555/udp || exit 1
