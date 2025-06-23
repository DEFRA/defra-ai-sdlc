# Project Setup

Set up your development environment to use AI tools safely and effectively.

## Set up your coding assistant

### 1. Install an AI coding assistant

Install Cursor or another coding assistant from the [Defra Approved Tools](../appendix/defra-approved-tools.md) list.

### 2. Turn on privacy settings

**Important:** You must enable privacy settings to protect government data.

**In ChatGPT:**
- Go to Settings > Data Controls > "Improve the model for everyone"
- Turn this setting off

**In Cursor:**
- Go to Settings > General > Privacy Mode
- Turn this setting on

**Why this matters:** Privacy settings stop your code and data being stored on AI providers' servers. They also prevent your data being used to train AI models.

### 3. Add AI rules files

Add [Rules for AI](../../pages/appendix/rules-for-ai) to your repository and commit them to version control.

## Set up repository documentation

You need access to artifacts like user stories, technical designs, diagrams and interface designs from within your coding assistant.

### Use Obsidian Vault (optional)

Use [Obsidian (opens in new tab)](https://obsidian.md/){:target="_blank"} to manage all your project artifacts centrally. You can add an obsidian vault to your code repo or create a separate repo and link to it using [git submodules (opens in new tab)](https://git-scm.com/book/en/v2/Git-Tools-Submodules){:target="_blank"}

You don't have to use Obsidian, you can use another approach that suits your team.

## [Next -> Feature Development](../feature-development)