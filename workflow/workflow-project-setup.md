# Project Setup

Setting up a development project effectively using AI tools and techniques ensures smooth collaboration, high productivity, and adherence to best practices. Below is a detailed guide for initializing your project:

## Project Kickoff

- **Choose a code hosting service**: Select GitHub, GitLab or Bitbucket for your project.
- **Set up version control**: Choose a Git branching strategy such as Gitflow or trunk-based development.

## Repository Setup

- **Using CDP**: If using a Continuous Development Platform (CDP), initialize the CDP project to create and configure the GitHub repository.
- **Without CDP**: Manually create a GitHub repository and configure necessary settings (e.g., branch protection rules, issue templates).

## IDE and AI Tools Setup

- **Set up your AI-enabled development environment**:
    - Install either Cursor or Windsurf IDE
	    - [Set up Cursor](../tool-specific/tool-cursor.md)
	    - [Set up Windsurf](../tool-specific/tool-windsurf.md)
    - Install required Visual Studio Code extensions - these are compatible with both IDEs
- **Configure language settings**:
    - Add required files from the [language-specific library](../language-specific/README.md)
    - Set up your `.cursorrules` file with team requirements
    - Create a compatibility link: `ln -s .cursorrules .windsurfrules`
- **Configure your AI assistant**:
	- Update the system prompt in your IDE settings
	- Keep the prompt concise as it runs with each interaction

## Documentation Tools

- **Setup Obsidian (if using)**:
    - Follow [Obsidian-specific setup guidance](../tool-specific/tool-obsidian.md)
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
