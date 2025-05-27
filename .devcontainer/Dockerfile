# Use a lightweight base image
FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Set Flutter version
ENV FLUTTER_VERSION=3.19.5

# Install dependencies and clone Flutter SDK
RUN apt-get update && \
    apt-get install -y curl git unzip xz-utils zip libglu1-mesa && \
    git clone https://github.com/flutter/flutter.git /opt/flutter && \
    cd /opt/flutter && \
    git checkout $FLUTTER_VERSION

# Add Flutter to PATH
ENV PATH="/opt/flutter/bin:/opt/flutter/bin/cache/dart-sdk/bin:${PATH}"

# Precache Flutter binaries (like Dart SDK and common platform SDKs)
RUN /opt/flutter/bin/flutter precache --web --linux
