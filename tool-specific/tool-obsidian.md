# Obsidian Setup Guide

## Initial Setup

1. Create Obsidian vault for your project
2. Configure basic settings:
   - Remove the default welcome file
   - Set appearance theme to 'Minimal' (recommended)
   - Configure Files and Links settings:
     - Set "Default location for new notes" to "Same folder as current file"
     - Set "Default location for new attachments" to "in subfolder under current folder"

## Required Plugins

Enable community plugins and install:
- Excalidraw (for diagrams)
- Kanban (for project management)
- Git (for version control)

## Project Structure Setup

1. Configure Git integration:
   - Set "Custom base path (git repository path)" to '../'

2. Create essential folders:
   - `product-requirements/` - For product documentation
   - `architecture/` - For system architecture documentation

3. Version Control Setup:
   - Add the vault folder to `.prettierignore`
   - Add `.obsidian/workspace.json` to `.gitignore`
   - Copy relevant `.cursorrules` and prompts from the defra-ai-sdlc repository

## Additional Configuration

### Mermaid Diagram Support
- To improve Mermaid diagram rendering, adjust the CSS styles as documented in the [Obsidian Mermaid Guide](https://unmesh.dev/post/obsidian_mermaid/).

### Optional Setup
- Create a Kanban board for project task tracking
- Configure additional appearance settings as needed