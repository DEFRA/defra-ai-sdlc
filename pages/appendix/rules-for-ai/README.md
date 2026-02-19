# Rules and Instructions for AI

Most AI Coding Assistants (AICAs) let you define project-level rules and instructions that shape how the AI generates code. These define consistent and repeatable standards, patterns and conventions across your codebase.

Each tool uses a different name and file format, but the underlying purpose is the same — give the AI context about your project so it follows your coding standards, architecture and security requirements.

| Tool | What they call it | Configuration location |
|------|------------------|----------------------|
| **GitHub Copilot** | Instructions | `.github/copilot-instructions.md` and `.github/instructions/*.instructions.md` |
| **Cursor** | Rules | `.cursor/rules/*.mdc` |
| **Claude Code** | Project instructions | `CLAUDE.md` and `.claude/rules/*.md` |
| **Windsurf** | Rules | `.windsurf/rules/*.md` |

Rules and instructions are committed to version control alongside your codebase so every team member and every AI interaction follows the same standards.

## What to include

Good rules and instructions for AI typically cover:

- **Project overview** — service name, tech stack, directory structure
- **Coding standards** — naming conventions, language rules, linting
- **Architecture patterns** — how code is organised (route handler → service → view)
- **Security rules** — input validation, CSRF, secrets management, PII logging
- **Testing standards** — framework, coverage targets, naming conventions
- **Accessibility** — WCAG 2.2 AA, GOV.UK Design System
- **Branching and commits** — trunk-based development, conventional commits

## Comprehensive setup guides

For detailed setup guides with ready-to-use example files, see the [Defra Tools Guidance — Tool Setup](https://defra.github.io/ai-sdlc-tool-guidance/tool-setup/){:target="_blank"} (opens in new tab). This includes:

- **GitHub Copilot**: [Setup guide](https://defra.github.io/ai-sdlc-tool-guidance/tool-setup/github-copilot-setup){:target="_blank"} (opens in new tab) with example instructions, agents and reusable prompts
- **Cross-tool mapping**: [Using examples with other AI tools](https://defra.github.io/ai-sdlc-tool-guidance/tool-setup/cross-tool-config){:target="_blank"} (opens in new tab) — how to adapt the examples for Cursor, Claude Code and Windsurf

## GitHub Copilot example

GitHub Copilot reads instructions from your repository's `.github/` directory. The root file `.github/copilot-instructions.md` is always active. Scoped instruction files in `.github/instructions/` activate only for matching files.

**Recommended directory structure:**

```
your-repo/
└── .github/
    ├── copilot-instructions.md              # Root instructions (always active)
    ├── agents/
    │   ├── defra-app-developer.agent.md     # Defra-compliant development
    │   ├── code-reviewer.agent.md           # Systematic code review
    │   └── tester.agent.md                  # BDD-focused testing
    ├── instructions/
    │   ├── node-backend.instructions.md     # Node.js/Hapi backend rules
    │   ├── csharp-backend.instructions.md   # C#/ASP.NET Core Minimal API rules
    │   └── frontend.instructions.md         # Accessibility, GDS patterns
    └── prompts/
        ├── write-adr.prompt.md              # Generate architecture decisions
        ├── write-tests.prompt.md            # Generate test suites
        └── security-review.prompt.md        # Review code for vulnerabilities
```

**Scoped instruction example** — this file activates only when Copilot is working on JavaScript files:

```markdown
---
applyTo: "**/*.js,**/*.mjs"
---

# Node.js Backend

## Language rules
- Use vanilla JavaScript — do not use TypeScript without an approved exception
- Use JSDoc for type annotations
- Use ES modules (import/export) by default
- Use async/await — do not use callbacks or raw .then() chains
- Lint with ESLint and format with Prettier

## Framework
- Use Hapi for all HTTP servers — do not use Express, Fastify, or Koa
- Use joi (standalone) for request validation — do not use the deprecated @hapi/joi
- Use @hapi/crumb for CSRF protection
- Use @hapi/blankie for Content Security Policy headers
```

Copy-paste ready files for GitHub Copilot are available in the [Defra Tools Guidance — GitHub Copilot setup guide](https://defra.github.io/ai-sdlc-tool-guidance/tool-setup/github-copilot-setup){:target="_blank"} (opens in new tab).

## Cursor examples

Cursor saves rules in the `.cursor/rules` directory. Each file uses the `.mdc` extension with frontmatter to control when the rule activates. The documentation can be found [here (opens in new tab)](https://docs.cursor.com/context/rules){:target="_blank"}.

Copy-paste ready rule files for Cursor are available in the [Defra Tools Guidance — Cursor setup guide](https://defra.github.io/ai-sdlc-tool-guidance/tool-setup/cursor-setup){:target="_blank"} (opens in new tab), including:

- [Node.js backend rules](https://defra.github.io/ai-sdlc-tool-guidance/tool-setup/cursor/nodejs-backend-rules){:target="_blank"} (opens in new tab) — Hapi, vanilla JS, MongoDB, REST API patterns, Jest
- [Node.js frontend rules](https://defra.github.io/ai-sdlc-tool-guidance/tool-setup/cursor/nodejs-frontend-rules){:target="_blank"} (opens in new tab) — GOV.UK Design System, Nunjucks, Playwright, accessibility
- [Python backend rules](https://defra.github.io/ai-sdlc-tool-guidance/tool-setup/cursor/python-backend-rules){:target="_blank"} (opens in new tab) — FastAPI, pytest, MongoDB mocking patterns