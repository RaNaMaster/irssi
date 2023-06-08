# Use a base image with the desired Linux distribution
FROM alpine:latest

# Install required packages
RUN apk update && \
    apk add --no-cache irssi

# Expose the IRC port (default is 6667)
EXPOSE 6667

# Set the working directory
WORKDIR /app

# Add volume mounts
VOLUME /root/.irssi
VOLUME /data

# Start Irssi
CMD ["irssi"]
