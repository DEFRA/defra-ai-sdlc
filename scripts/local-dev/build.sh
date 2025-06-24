#!/bin/bash

# Build script for Jekyll site
# This script builds the Jekyll site for production testing

echo "🔨 Building Jekyll site..."

# Check if dependencies are installed
if [ ! -d "vendor/bundle" ] && [ ! -f "Gemfile.lock" ]; then
    echo "⚠️  Dependencies not found. Running setup first..."
    ./scripts/local-dev/setup.sh
fi

# Clean previous build
echo "🧹 Cleaning previous build..."
bundle exec jekyll clean

# Build the site
echo "🏗️  Building site..."
JEKYLL_ENV=production bundle exec jekyll build

echo "✅ Build complete!"
echo "   Site built to _site/ directory"
echo "   You can serve it locally with: python3 -m http.server 8000 --directory _site" 