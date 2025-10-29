#!/bin/bash

# Vercel Build Script for Flutter Web

echo "Installing Flutter..."

# Download and setup Flutter
git clone https://github.com/flutter/flutter.git -b stable --depth 1
export PATH="$PATH:`pwd`/flutter/bin"

# Get Flutter version
flutter --version

echo "Building Flutter Web..."
flutter config --enable-web
flutter pub get
flutter build web --release

echo "Build complete!"

