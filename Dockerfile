FROM n8nio/n8n:latest

USER root

# Install Chromium + dependencies (Alpine package names differ from Debian/Ubuntu)
RUN apk add --no-cache \
    chromium \
    nss \
    freetype \
    harfbuzz \
    ca-certificates \
    ttf-freefont \
    udev \
    dumb-init

# Puppeteer expects this path
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium

USER node
