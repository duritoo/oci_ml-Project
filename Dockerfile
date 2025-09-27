# Use a specific n8n version for stability
FROM docker.n8n.io/n8nio/n8n:1.112.5
# Switch to root to install dependencies

USER root

# Install Chromium and essential dependencies (Alpine)
RUN apk add --no-cache \
    chromium \
    nss \
    freetype \
    harfbuzz \
    ca-certificates \
    ttf-freefont \
    udev \
    dumb-init

# Puppeteer expects a specific executable path
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium

USER node
