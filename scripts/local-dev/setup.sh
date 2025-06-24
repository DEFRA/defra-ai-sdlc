#!/bin/bash

# Setup script for Jekyll local development
# This script installs the necessary dependencies to run the Jekyll site locally

echo "🏗️  Setting up Jekyll local development environment..."

# Check if Ruby is installed
if ! command -v ruby &> /dev/null; then
    echo "❌ Ruby is not installed. Please install Ruby first:"
    echo "   - On macOS: brew install ruby"
    echo "   - On Ubuntu: sudo apt-get install ruby-dev"
    exit 1
fi

# Check if Bundler is installed
if ! command -v bundle &> /dev/null; then
    echo "📦 Installing Bundler..."
    gem install bundler
fi

# Install Jekyll dependencies locally (avoids sudo requirement)
echo "📦 Installing Jekyll dependencies locally..."
bundle install --path vendor/bundle

echo "✅ Setup complete!"
echo ""
echo "Next steps:"
echo "1. Run './scripts/local-dev/serve.sh' to start the development server"
echo "2. Open http://localhost:4000/ai-sdlc-tool-guidance in your browser"
echo "3. Make changes to your files and they will auto-reload" 