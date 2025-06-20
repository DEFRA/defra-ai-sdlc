# How to use coding assistants in Defra

This guide shows you how to use AI coding assistants (AICE) to build production-quality code for Defra.

**This approach may differ from other AI tools you have used.**

This page uses [Cursor (opens in new tab)](https://www.cursor.com/en){:target="_blank"} as an example coding assistant, but these principles apply to all coding assistants approved for use by Defra.

## Use agent mode

Generate all your code using the coding assistant's [agent mode (opens in new tab)](https://docs.cursor.com/chat/overview){:target="_blank"}.

You prompt the agent interactively to create code, tests, documentation and other files.

Add context to help your agent understand whats needed. Include files, images, web searches and other information. For example, ask the agent to read a file containing a user story or analyse a file containing a diagram. [Read more about context (opens in new tab)](https://docs.cursor.com/context/@-symbols/overview){:target="_blank"}.

Work with agents interactively. Guide the agent to your solution using prompts. Review what it creates.

You do not need external chatbots like ChatGPT to generate code. You do not need to copy code from external sources into your project. Also, we do not recommend less productive features like copilots or tab completion.

The [workflow guide](../feature-development/README.md) explains how to deliver software using agents.

## Set up AI rules

Create project-level AI rules. These define consistent standards, patterns and conventions for your codebase. Agents follow these rules when they generate code.

Commit AI rules to version control. This means all team members use the same standards.

See [Rules for AI](../appendix/rules-for-ai) for more information.

## Turn on privacy settings

**Important:** Turn on privacy settings in your coding assistant before you start. Privacy settings prevent your code and data being stored on AI providers' servers. They stop your data being used to train AI models.

Do not use beta releases of coding assistants.

**In Cursor:**
- Go to Settings > General > Privacy Mode
- Turn this setting on

## Manage changes with git

Use git to manage all AICE-generated changes. This is a proven and reliable approach.

Review everything the AICE generates - code, tests, documentation and other files.

Commit code using your GitHub name. You are responsible for what you commit.

## Next steps

1. Read the [Getting Started](../getting-started/README.md) guide
2. Learn to write prompts using the [Prompting](../appendix/prompt-library/prompting-guidance.md) guide
3. Follow the [workflow](../feature-development/README.md)