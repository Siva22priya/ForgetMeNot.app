FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Set Flutter version
ENV FLUTTER_VERSION=3.19.5

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git curl unzip xz-utils zip libglu1-mesa && \
    rm -rf /var/lib/apt/lists/*

# Clone Flutter SDK to /opt/flutter
RUN git clone https://github.com/flutter/flutter.git /opt/flutter && \
    cd /opt/flutter && \
    git checkout $FLUTTER_VERSION

# Set PATH for Flutter
ENV PATH="/opt/flutter/bin:/opt/flutter/bin/cache/dart-sdk/bin:$PATH"

# Precache common platforms
RUN /opt/flutter/bin/flutter precache --web --linux
