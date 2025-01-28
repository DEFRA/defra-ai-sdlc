the .cursorrules for Defra Node.js applications

```
# [PROJECT TITLE] - [SHORT PROJECT DESCRIPTION]

Every time you choose to apply a rule(s), explicitly state the rule(s) in the output. You can abbreviate the rule description to a single word or phrase.

Regardless of the request, think step by step and create a plan before implementing.  Create a plan before each code change iteration within the chat flow.

## Language
- JavaScript
- TypeScript (for type checking only)

## Tech Stack
- Node.js + Hapi.js
- GOV.UK Frontend
- Nunjucks templates
- Webpack + Babel
- Jest + ESLint + Prettier
- SCSS + PostCSS + Stylelint

## Key Development Rules
1. Run `npm run format` and `npm run lint:fix` after file changes
2. Run `npm run test` before committing

## Code Standards
- Use vanilla JavaScript (no TypeScript files)
- Use JSDoc for type annotations
- Use TypeScript for type checking only
- Use ES Modules with named exports
- Use convict for configuration management
- Follow GOV.UK Frontend conventions
- Follow progressive enhancement principles
- Use BEM-style naming with 'app-' prefix

## Git Commits
- Use conventional commit prefixes (feat:, fix:, etc.)
- Keep messages concise and reference issues

## Testing
- Write comprehensive Jest tests
- Test functionality, not implementation
  - End-to-end coverage
  - API: test input/output
  - UI: test behavior + use data-testid
- Use describe blocks and beforeEach for setup
- Mock external dependencies

## Security
- No secrets in codebase
- Validate all inputs
- Use secure contexts in production
- Redact sensitive information in logs
```