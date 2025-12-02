# Security

This guidance helps you use AI tools securely in government software development.

## Key security risks when using AI

### How to check AI-generated code for vulnerabilities

AI-generated code can contain security vulnerabilities or accidentally embed secrets like API keys.

**Do:**
- Review code for vulnerabilities, especially those found in the [OWASP Top 10](https://owasp.org/Top10/){:target="_blank"} (opens in new tab)
- Check code for any embedded secrets like API keys or database credentials
- Scan generated code with a Static Application Security Testing (SAST) tool
- Ensure that security-specific code like encryption is carefully reviewed

**Don't:**
- Assume AI-generated code is free of vulnerabilities
- Trust that AI-generated code implements security-critical functionality correctly

### How to secure dependencies in AI-generated code

AI-generated code can import packages which have known vulnerabilities or which are planted by attackers.

**Do:**
- Scan all dependencies with a Software Composition Analysis (SCA) tool to highlight any vulnerabilities
- Use constraints such as "Use secure and up-to-date dependencies" in your prompts
- Check any unfamiliar packages for trustworthiness using a service like [deps.dev](https://deps.dev){:target="_blank"} (opens in new tab)

**Don't:**
- Assume dependencies included in AI-generated code are secure or non-malicious

### How to protect your development environment

Local AI tools like Cursor can expose you to risk in certain circumstances.

**Do:**
- Prevent local user credentials and auth tokens from being exposed to the AI tool (for example with a `.cursorignore` file)
- Only install AI tool plugins maintained by trusted organisations
- Use only approved MCP servers when connecting AI tools to external systems—MCP is currently in review and limited to pilot projects (see [Defra MCP Guidance](../appendix/defra-mcp-guidance.md))

**Don't:**
- Use any untrusted data when writing prompts or user stories that end up in prompts
- Install untrusted plugins
- Auto-approve MCP tool calls without review

## [Next -> Getting Started](../getting-started/README.md)