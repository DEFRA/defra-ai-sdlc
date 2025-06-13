# Development

This section outlines the recommended process and guidelines for developing features using an AI-powered development workflow.

AI-powered development enables rapid creation and modification of code. This means there are certain considerations, but the established engineering principles still remain. Code still needs to be readable, maintainable, extensible, and testable.

## Workflow

### Prerequisites

Before starting development, ensure you have:

1. **Clear Requirements**: Detailed feature requirements with defined scope, as outlined in the [Product Requirements](product-requirements.md)
2. **Code Assistant Configuration**: [Rules for AI](../appendix/rules-for-ai) for consistent code style and design
3. **Clean Codebase**: 
    - passing tests with good coverage
    - up-to-date documentation
    - completed refactoring
    - committed git changes

### 1. Create a new git branch

Create a new git branch dedicated to the feature. For example, `feature/add-todo-task`.

### 2. Prompt the AICA interactively

- Use an Artificial Intelligence Coding Assistant (AICA) to implement the feature e.g. Cursor
- Use prompt templates from your prompt library to start the process - [prompt-new-feature-story](../appendix/prompt-library/development/prompt-new-feature-story.md) and reference your requirements file using the @file feature
- As the AI generates the code, monitor its plan to ensure it aligns with your expectations.
- After completion "Accept" the changes, then review the changes in the git diff viewer. If changes are unexpected or involve large deletions, revert all changes, refine your prompt, and try again.

### 3. Do initial manual testing and iteration

- Test the generated feature manually to ensure functionality is correct.
- Iterate as needed, checking each code change aligns with expectations.
- Feed log messages back into the model when it has issues. This helps it rapidly identify and fix issues.

### 4. Test

See [Testing Workflow](testing.md)

### 5. Refactor

See [Refactoring Workflow](refactoring.md)

### 6. Code Review

- Review the code thoroughly by walking through the git diff for every change.
- Make corrections or improvements if required.

### 7. Documentation

- Prompt the AI to update or create relevant documentation in the repository's architecture folder, including regular updates to the data models, implementation specifics and general architecture. Use the [prompt-add-update-documentation](../appendix/prompt-library/documentation-writing/prompt-add-update-documentation.md) prompt for this purpose.
- Update the AI rules files as necessary.
- Keep clear and up-to-date rules documentation to ensure better context for future development cycles.

### 8. Finalise and Merge

- Use the standard git workflow to push the feature branch to the repository and create a MR for review. Then merge into the main branch after acceptance.
- Delete the feature branch after merging.

### 9. Reflect and Optimise Prompts

- Analyse your prompts and ask the LLM for feedback on how to improve future prompt writing.
- Add feedback to your prompt library for continuous improvement.
- Run a team retrospective to reflect and improve ways of working

## Guidelines

- **Quality, consistent results**: As per [the four pillars](../getting-started/the-four-pillars), the combination of good quality [AI rules](../appendix/rules-for-ai), good quality [prompts](../appendix/prompt-library) and clear [product requirements](product-requirements.md) are essential for getting consistent and predictable results.

- **Avoid multiple branches or simultaneous changes**: Avoid having two or more people separately changing the same codebase or at least the same areas of the codebase at the same time.

- **Use Git to manage rapid change**: Git is a robust, proven and simple tool to manage and reverse changes as needed. The established processes still apply; do each new feature on a branch; commit little and often; continuously integrate with main.

- **Use logging to rapidly debug.** Feed log messages back into the model when it has issues. This helps it rapidly identify and fix issues. Include detailed debug-level logs in the code when on the branch. You can always remove or reduce this when you refactor at the end of the feature.

- **Consider Complexity**: As the codebase grows larger and more complex, make the scope of tasks given to the LLM increasingly specific. If the scope is too broad, the LLM may make assumptions or overlook details due to its limited context window.
  
- **Revert and Re-prompt Workflow**: If you find yourself needing to go through multiple iterations (i.e. a "Doom Loop") with the model and the code doesn't meet requirements, your initial prompt was likely unclear. Instead of extensive iterations, it is more efficient to stop, revert all changes, refine your prompt or the requirements, and restart the process.

- **Think 'Script First'**: The models are very good at writing scripts, such as bash scripts, to do repetitive tasks.

- **Terminal Commands**: AICAs also have integration with the command line, meaning that you can often write your intention in plain English and have the model generate the appropriate terminal command.

## [Next -> Testing](testing.md)