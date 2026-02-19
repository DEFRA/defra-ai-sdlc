# Choosing Models

AI tools give you access to a range of large language models (LLMs). Not every task needs the most powerful model. Picking the right model for the job saves cost, reduces latency and lowers environmental impact.

Model capabilities improve on a cycle of weeks, not years. Specific model recommendations date quickly, so this guidance focuses on principles. Check your tool's model selector regularly — providers frequently add new models and retire older ones.

> **Quick start:** For general-purpose coding tasks, start with Claude Sonnet 4.5 or 4.6. It handles most day-to-day development well — generating functions, writing tests, reviewing code and refactoring — at a good balance of quality and cost.

## Model tiers

Most tools group their models into broad capability tiers. The names differ between providers but the pattern is consistent.

| Tier | Good for | Examples at time of writing |
|------|----------|----------------------------|
| **Lightweight** | Autocomplete, simple refactors, boilerplate, quick Q&A | Claude Haiku, GPT-4o mini, Gemini Flash |
| **Mid-range** | Generating functions and tests, code review, documentation, language conversion | Claude Sonnet, GPT-4o, Gemini Pro |
| **Advanced** | Multi-file architecture, requirements generation, complex debugging, security analysis, large refactors | Claude Opus, GPT Codex, Gemini Pro with thinking, o-series reasoning models |

Lightweight models are fast and cheap. Mid-range models suit most day-to-day coding — they produce good results when you provide clear context through rules, instructions and requirements. Advanced models consume significantly more tokens per request. Use them intentionally.

## Match the model to the task

| Task | Tier | Why |
|------|------|-----|
| Autocomplete while typing | Lightweight | Speed matters more than depth |
| Generate a function from a clear spec | Mid-range | Good enough with clear context |
| Write unit tests for existing code | Mid-range | Pattern-based, well scoped |
| Generate product requirements from an idea | Advanced | Needs deep reasoning and structure |
| Debug a cross-service integration failure | Advanced | Requires broad context analysis |
| Refactor an entire module to a new pattern | Advanced | Multi-file reasoning required |
| Scaffold a new route with validation | Mid-range | Repeatable, template-driven |

## Cost and token awareness

Every request consumes tokens. More capable models cost more per token and reasoning models use additional "thinking" tokens internally.

- **Completions** are cheap — they run constantly but use lightweight models
- **Chat requests** vary — a short question costs far less than a prompt with an entire requirements document attached
- **Agentic workflows** (multi-step tasks where the AI plans and executes) can consume large amounts of tokens across many calls

To manage cost:

1. Start with a mid-range model — move to advanced only when the result is not good enough
2. Write clear, scoped prompts — a focused prompt gets a better answer in fewer tokens
3. Use rules and instructions files for standing context rather than repeating conventions in every prompt
4. Break large tasks into smaller steps

## Thinking and reasoning models

Some providers offer "thinking" or "reasoning" variants that spend extra tokens working through a problem step by step before responding. Use them for multi-step logic, design trade-offs, and complex requirements generation. Avoid them for simple completions or short factual questions where speed matters more than depth.

## Models for coding (February 2026)

This snapshot will date. Use it as a starting point, not a permanent reference.

Strong code generation models exist across multiple providers. For complex coding tasks — architecture, multi-file refactors, generating requirements — Anthropic's Claude Opus and Sonnet, OpenAI's GPT Codex family, and Google's Gemini Pro models all perform well. For day-to-day coding with clear context, mid-range models like Claude Sonnet and GPT-4o are cost-effective workhorses. For inline completions and autocomplete, lightweight models like Claude Haiku, GPT-4o mini and Gemini Flash are fast and cheap.

Most AI coding tools — including GitHub Copilot, Cursor, Windsurf and Claude Code — let you select which model to use. Check your tool's documentation for how to switch.

Key points:

- no single provider consistently leads across all tasks — try different models for different scenarios
- staying on the latest available version within your tool is usually the best default
- free-tier and included models are often sufficient for completions and simple chat
- advanced models are worth the extra cost for requirements generation, architecture and large refactors
- share findings with your team when a model works well for a specific task

## [Next -> Mindset](ai-working-mindset.md)
