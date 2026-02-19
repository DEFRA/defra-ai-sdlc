# Documentation

AI helps you create and maintain high-quality, readable documentation. It can read documenation as part of its context.

## Guidelines

### Create a documentation rules file

Create a documentation [rules and instructions for AI](../appendix/rules-for-ai/README.md) file with:

- Naming conventions, formatting rules, and style preferences
- Mandatory sections (Overview, Setup, Usage, Contribution Guidelines)
- Review process and timing
- Sample snippets or diagrams (optional)

### Keep documents up to date

Update documentation when you change code to both help team members and AI understand the current system.

### Prompt documentation generation

Use a prompt like [prompt-add-update-documentation](../../pages/appendix/prompt-library/documentation-writing/prompt-add-update-documentation.md) to have AI update documentation regularly.

For architecture decision records, use the [Write ADR prompt](https://defra.github.io/ai-sdlc-tool-guidance/tool-setup/github-copilot/prompts/write-adr){:target="_blank"} (opens in new tab) from the Defra Tools Guidance.

### Use diagrams

AI can generate and read diagrams. For example [Mermaid diagrams (opens in new tab)](https://mermaid.js.org/){:target="_blank"} for sequence diagrams, data models, and other visual documentation.

### Use documentation as a knowledge base

Good up-to-date documentation helps AI to understand context and implementation decisions
