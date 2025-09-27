# Use a specific n8n version for stability
FROM n8nio/n8n:1.112.5

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
