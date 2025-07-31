# Development

This section outlines how to develop new features. For test-first development, see [Test Driven Development](test-driven-development.md).

## Workflow

### Prerequisites

1. **Clear requirements**: Write detailed feature requirements with defined scope, as outlined in [Building Requirements](building-requirements/README.md)
2. **AI rules**: Set up project [Rules for AI](../appendix/rules-for-ai) to maintain consistent standards, patterns and conventions across your codebase
3. **Capable model**: Use the most capable large language model (LLM) available for your task to get quality results

### 1. Create a new git branch

Create a new git branch for your feature.

### 2. Prompt the coding assistant

- Use an AI Coding Assistant (AICA) in Agent mode
- Use [prompt-new-feature-story](../appendix/prompt-library/development/prompt-new-feature-story.md) and reference your requirements files directly with the Coding Assistant Agent
- Generate the initial code
- Accept changes, then review them in the git diff viewer

### 3. Test and iterate manually

- Test the generated feature manually to check it works correctly
- Give error messages back to the model for quick fixes
- Review the code to make sure it meets your expectations once it's working

### 4. Create automated tests

- Start a new agent conversation
- Use [testing prompts](../../pages/appendix/prompt-library/testing/prompt-add-unit-test.md) from your prompt library to generate tests
- Accept changes, then review in the git diff viewer
- Review the tests carefully to make sure they meet your expectations once they're working

### 5. Refactor

- Review and refactor code while making sure tests still pass
- See [Refactoring Workflow](refactoring.md)

### Follow-up tasks

- Create a merge request for peer review
- Update documentation using [prompt-add-update-documentation](../appendix/prompt-library/documentation-writing/prompt-add-update-documentation.md)
- Update AI rules and prompt library based on what you've learned

## Guidelines

**Get consistent results**: Follow the four pillars by using [AI rules](../appendix/rules-for-ai), [prompts](../appendix/prompt-library) and clear [product requirements](building-requirements/README.md) together.

**Review everything generated**: Review and refine everything the agent generates.

**Debug with logs**: Include detailed logs when developing. Give error messages back to the model for faster fixes.

**Avoid the "Doom Loop"**: If you need multiple iterations, your prompt was unclear. Revert changes, refine your prompt, and restart.

**Match scope to complexity**: Give the AI more specific tasks as codebases grow.

## [Next -> Test Driven Development](test-driven-development.md)