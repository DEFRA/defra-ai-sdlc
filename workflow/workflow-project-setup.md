# Project Setup

Setting up a development project effectively using AI tools and techniques ensures smooth collaboration, high productivity, and adherence to best practices. Below is a detailed guide for initializing your project:

## Project Kickoff

- **Determine Hosting Platform**: Decide where the project will be hosted (e.g., GitHub, GitLab, or Bitbucket).
- **Agree on Git Branching Strategies**: Establish a branching strategy (e.g., Gitflow, trunk-based development) to ensure clear collaboration guidelines.

## Repository Setup

- **Using CDP**: If using a Continuous Development Platform (CDP), initialize the CDP project to create and configure the GitHub repository.
- **Without CDP**: Manually create a GitHub repository and configure necessary settings (e.g., branch protection rules, issue templates).

## IDE and AI Tools Setup

- **Select and Configure an AI-Powered IDE**:
    - Choose an AI-enabled IDE such as Cursor or Windsurf.
    - Install and configure any necessary plugins or extensions for AI-assisted development.  Both the above tools are based on Visual Studio, and the VS Code extensions will work.
- **Add Language-Specific Files**:
    - From the playbook’s [language-specific library](../language-specific/README.md), add required files (e.g., IDE rules).
- **Edit Configuration Files**:
    - Customise the IDE rules files to align with your team's requirements.
- **Update your system prompt**:
	- Check that you have updated the system prompt / rules in your IDE so the LLM has a base understanding of it's role in development.  System prompts should be short as they are called during every new interaction with the LLM.

## Documentation Tools

- **Setup Obsidian (if using)**:
    - Follow the setup guidance below
    - Create a vault for project documentation within the repository.
    - Configure essential plugins:
        - Git integration for version control
        - Markdown formatting tools
    - Set up templates for:
        - Technical specifications
        - Architecture decisions
        - Meeting notes
    - Link the workspace with the repository or team workspace for centralized knowledge sharing.
    - If not using Obsidian, setup directories in the repository to manage:
        - Product requirements
        - Architecture documentation
        - API specifications
        - Development guidelines
        - Ensure all documentation is accessible to the IDE for reference

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
