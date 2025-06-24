# Jekyll Local Development Scripts

This folder contains scripts to help you run the Jekyll site locally for development and testing.

## Quick Start

1. **First time setup:**
   ```bash
   chmod +x scripts/local-dev/*.sh
   ./scripts/local-dev/setup.sh
   ```

2. **Start development server:**
   ```bash
   ./scripts/local-dev/serve.sh
   ```

3. **Open your browser to:**
   ```
   http://localhost:4000/ai-sdlc-tool-guidance
   ```

## Scripts Overview

### `setup.sh`
- Installs Ruby dependencies
- Sets up Bundler
- Installs Jekyll gems
- Run this once before first use

### `serve.sh`
- Starts Jekyll development server
- Enables live reload (changes automatically refresh browser)
- Serves on `http://localhost:4000/ai-sdlc-tool-guidance`
- Use this for daily development

### `build.sh`
- Builds the site for production
- Outputs to `_site/` directory
- Use this to test production builds

## Requirements

- Ruby (install with `brew install ruby` on macOS)
- Bundler (automatically installed by setup script)

## Troubleshooting

### Ruby version issues
If you get Ruby version errors:
```bash
# On macOS with Homebrew
brew install ruby
echo 'export PATH="/opt/homebrew/opt/ruby/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

### Permission errors
If you get permission errors:
```bash
chmod +x scripts/local-dev/*.sh
```

### Port already in use
If port 4000 is busy, Jekyll will automatically try 4001, 4002, etc.

## Development Workflow

1. Run `./scripts/local-dev/serve.sh`
2. Make changes to your files
3. Browser automatically refreshes with changes
4. Test your changes locally before pushing to the server

## Benefits of Local Development

- **Faster feedback:** See changes instantly without waiting for server builds
- **Offline development:** Work without internet connection
- **Safe testing:** Test changes before they go live
- **Better debugging:** See build errors and warnings locally 