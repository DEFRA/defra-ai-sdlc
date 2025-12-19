# Copilot Instructions for Defra AI SDLC Playbook

## Project Overview

This is a **Jekyll-based documentation site** (GitHub Pages) serving as the official Defra AI SDLC Playbook. It provides guidance on using AI tools in software development for UK Government (Defra) teams.

**Key facts:**
- Jekyll theme: `jekyll-theme-minimal`
- Base URL: `/defra-ai-sdlc`
- Target audience: UK Government digital professionals new to AI in SDLC

## Architecture & Structure

```
pages/               # Main content organized by topic
  getting-started/   # Workflow, four pillars, mindset, project setup
  generating-requirements/  # Product & technical requirements guidance
  feature-development/      # Development, TDD, testing, refactoring, docs
  appendix/          # Prompt library, AI rules examples, tools list
    prompt-library/  # Categorized prompt templates (product, dev, testing)
    rules-for-ai/    # Example cursor rules for Node.js, Python
_layouts/            # Jekyll layouts (default.html is main template)
_sass/               # SCSS styles (defra-styles.scss has GOV.UK colours)
assets/css/          # Main stylesheet importing theme + defra-styles
```

## Writing Style & Voice (Critical)

Follow `.cursor/rules/playbook-general-rules.mdc`:

- **Plain English**: Common words, sentences under 25 words, British English
- **Active voice**: "Configure the API" not "The API should be configured"
- **Address readers as "you"**, avoid "please", "simply", "just"
- **Use real government scenarios** as examples
- **Terminology**: Use "AI Assistant" (not chatbot), "AI Coding Assistant/AICA" (not AI IDE)

| Content Type | Tone |
|-------------|------|
| Instructions | Direct: "Run the test suite before committing" |
| Concepts | Educational: "AI models learn from patterns in your data" |
| Troubleshooting | Supportive: "If you encounter this error, first check..." |

## Local Development

```bash
# First time setup (from repo root)
./scripts/local-dev/setup.sh

# Start dev server with live reload
./scripts/local-dev/serve.sh

# Build for production
./scripts/local-dev/build.sh
```

Server runs at `http://localhost:4000/defra-ai-sdlc`

## Content Conventions

### Markdown files
- Use Jekyll front matter when needed
- External links: add `{:target="_blank"}` suffix and "(opens in new tab)" text
- Internal links: use relative paths from current file location

### Adding new pages
1. Create `.md` file in appropriate `pages/` subdirectory
2. Add navigation link in `README.md` table of contents
3. Include "Next ->" link at bottom for sequential content

### Prompt templates (`pages/appendix/prompt-library/`)
Structure prompts with: Context, Role, Tasks, Constraints, Examples, Output Format

### AI rules examples (`pages/appendix/rules-for-ai/`)
Show cursor rules with code fences, explain each rule file's purpose

## Styling

- GOV.UK colour palette defined in `_sass/defra-styles.scss`
- Key colours: `--defra-green: #00a33b`, `--govuk-blue: #1d70b8`
- Supports light/dark theme via `data-theme` attribute
- Max content width: 1400px with responsive breakpoints

## Key Files to Reference

- `_config.yml` - Site config, version, plugins, excluded directories
- `.cursor/rules/playbook-general-rules.mdc` - Voice and tone rules
- `pages/appendix/CONTRIBUTING.md` - Contribution workflow
- `pages/appendix/prompt-library/prompting-guidance.md` - Prompt writing best practices
