#!/bin/bash

# Serve script for Jekyll local development
# This script starts the Jekyll development server with live reload

echo "🚀 Starting Jekyll development server..."

# Check if dependencies are installed
if [ ! -d "vendor/bundle" ] && [ ! -f "Gemfile.lock" ]; then
    echo "⚠️  Dependencies not found. Running setup first..."
    ./scripts/local-dev/setup.sh
fi

# Clean Jekyll cache and generated files
echo "🧹 Cleaning Jekyll cache..."
bundle exec jekyll clean

# Start Jekyll server
echo "📡 Starting server at http://localhost:4000/ai-sdlc-tool-guidance"
echo "   Press Ctrl+C to stop the server"
echo ""

bundle exec jekyll serve --livereload --incremental --host 0.0.0.0 --port 4000 