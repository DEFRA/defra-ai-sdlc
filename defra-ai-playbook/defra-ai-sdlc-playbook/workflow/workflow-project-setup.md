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
    - Choose an IDE such as Cursor or Windsurf.
	    - [[tool-cursor|Cursor-specific guidance]]
	    - [[tool-windsurf|Windsurf-specific guidance]]
    - Install and configure any necessary plugins or extensions for AI-assisted development.
- **Add Language-Specific Files**:
    - From the playbook’s [[defra-ai-sdlc-playbook/language-specific/README| language-specific library]], add required files (e.g., `.cursorrules`).
- **Edit Configuration Files**:
    - Customize the `.cursorrules` file to align with your team’s requirements.
    - For cross-IDE compatibility, create a symlink: `ln -s .cursorrules .windsurfrules`.

## Documentation Tools

- **Setup Obsidian (if using)**:
    - Follow [[tool-obsidian|Obsidian-specific setup guidance]]
    - Create a vault for project documentation within the repository.
    - Link the workspace with the repository or team workspace for centralized knowledge sharing.
    - If not using Obsidian, setup directories in the repository to manage product requirement and architecture documentation that the IDE can access for reference.

## Frameworks and Initial Testing

- **Logging Framework**:
    - Set up or verify the presence of a logging framework for effective debugging and monitoring.
- **Testing Framework**:
    - Set up or ensure a testing framework is available for the project (e.g., Jest for JavaScript / Node.js, Pytest for Python, etc).
- **Verify Baseline Functionality**:
    - Run all existing tests to ensure they pass.
    - Compile the project and ensure it builds successfully.
    - If applicable, deploy the project to a test environment and verify deployment success.
