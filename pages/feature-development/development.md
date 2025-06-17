# Development

This section outlines the recommended process for developing features using an AI-powered development workflow.

## Workflow

### Prerequisites

1. **Clear Requirements**: Detailed feature requirements with defined scope, as outlined in the [Product Requirements](product-requirements.md)
2. **Rules for AI**: Set up project [Rules for AI](../appendix/rules-for-ai) for consistent and repeatable standards, patterns and conventions across your codebase
3. **Capable Code Generation Model**: Ensure you're using the most capable LLM model for the task you are running to get good quality results

### 1. Create a new git branch

Start with a new git branch dedicated to the feature.

### 2. Prompt the Coding Assistant

- Use an AI Coding Assistant (AICA) to implement the feature
- Use [prompt-new-feature-story](../appendix/prompt-library/development/prompt-new-feature-story.md) and reference your requirements files directly using the Coding Assistant
- This will generate the initial code
- Accept changes, then review in git diff viewer

### 3. Test and iterate manually

- Test the generated feature to ensure it works correctly
- Feed error messages back to the model for rapid fixes
- When it working, then review the code to ensure it meets your expectations

### 4. Create automated tests

- Start a new agent conversation
- Use testing prompts from your [prompt library](../../pages/appendix/prompt-library)
- Accept changes, then review in git diff viewer
- When it working, then review the tests carefully to ensure they meets your expectations
- See [Testing Workflow](testing.md) for more details

### 5. Refactor

- Review and refactor code while ensuring tests still pass
- See [Refactoring Workflow](refactoring.md)

### Follow-up tasks

- Create merge request for peer review
- Update documentation using [prompt-add-update-documentation](../appendix/prompt-library/documentation-writing/prompt-add-update-documentation.md)
- Update AI rules and prompt library based on lessons learned

## Guidelines

**Get consistent results**: Use quality [AI rules](../appendix/rules-for-ai), [prompts](../appendix/prompt-library) and clear [product requirements](product-requirements.md) together.

**Manage change with Git**: Do each feature on a branch, commit often, and integrate with main regularly.

**Debug with logs**: Include detailed logs when developing. Feed error messages back to the model for faster fixes.

**Avoid the "Doom Loop"**: If you need multiple iterations, your prompt was unclear. Revert changes, refine your prompt, and restart.

**Match scope to complexity**: As codebases grow, give the AI more specific tasks. Broad scope leads to assumptions and missed details.

**Coordinate team changes**: Avoid multiple people changing the same code areas simultaneously.

## [Next -> Testing](testing.md)