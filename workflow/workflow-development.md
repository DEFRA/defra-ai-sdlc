# Development

This section outlines the recommended process and guidelines for developing features using an AI-powered development workflow. 

That fact that AI-powered development enables rapid creation and modification of code means that there are certain considerations, but the established engineering principles still remain, and code still needs to be readable, maintainable, extensible, and testable.

## Workflow

Prerequisites:
1. **Feature Requirements**: Ensure there is are detailed feature requirements with clear scope, as per the product requirements workflow. This could be a User Story or Product Requirement Document, in markdown format. The document should be accessible to the AI-powered IDE.
2. **IDE Rules:** Ensure there are detailed IDE rules guide AI tools in adhering to code style and design preferences
3. **Clean Codebase**: Verify that the codebase is in a clean state:
    - All tests pass with good coverage.
    - Documentation is up to date.
    - Refactoring has been completed where necessary and all code is implemented consistently.
    - Git changes are committed and pushed.

### 1. Create a new git branch

- Create a new git branch dedicated to the feature. For example, `feature/add-todo-task`.

### 2. Interactively prompt the IDE

- Use an IDE in agentic "Chat" mode to implement the feature
- Use prompt templates from your prompt library to initiate the process - [prompt-new-feature](../prompt-library/prompt-new-feature.md) and reference your requirements file using the @file feature
- As the AI generates the code, monitor its plan to ensure it aligns with your expectations.
- After completion "Accept" the changes, then review the changes in the git diff viewer. If changes are unexpected or involve large deletions, revert all changes, refine your prompt, and try again.

### 3. Initial Testing and Iteration

- Test the generated feature manually to ensure functionality is correct.
- Iterate as needed, verifying each code change aligns with expectations.
- Feeding log messages back into the model when it has issues enables it to rapidly identify and fix issues.

### 4. Test

- See testing workflow

### 5. Refactor

- See refactoring workflow

### 6. Code Review

- Conduct a thorough code review by walking through the git diff for every change.
- Make corrections or enhancements if required.

### 7. Documentation

- Prompt the AI to update or create relevant documentation in the repository's architecture folder, including regular updates to the data models, implementation specifics and general architecture. Use the [prompt-add-architecture-docs](../prompt-library/documentation-writing/prompt-add-architecture-docs.md) and [prompt-update-documentation](../prompt-library/documentation-writing/prompt-update-documentation.md) prompts for this purpose.
- Update the IDE rules files as necessary. 
- Maintaining clear and up-to-date rules documentation ensures better context for future development cycles.

### 8. Finalise and Merge

- Use the standard git workflow of push the feature branch to the repository and creating a MR for review. Then merge into the main branch after acceptance.
- Delete the feature branch after merging.

### 9. Reflect and Optimise Prompts

- Analyse your prompts and ask the LLM for feedback on how to improve future prompt writing.
- Incorporate feedback into your prompt library for continuous improvement.
- Run at team retrospective to reflect and improve ways of working

## Best Practices

- **Avoid multiple branches or simultaneous changes**: Avoid having two or more people separately changing the same codebase or at least the same of areas of the codebase at the same time. 

- **Revert and Re-prompt Workflow**: If you find yourself needing to go through multiple iterations (2-3 loops) with the model and the code doesn't meet requirements, it's likely that your initial prompt was unclear. Instead of extensive iterations, it is more efficient to stop, revert all changes, refine your prompt or the requirements, and restart the process.

- **Use Git to manage rapid change**: Git is a robust, proven and simple tool to manage and reverse changes as needed. The established processes still apply; do each new feature on a branch; commit little and often; continuously integrate with main.  

- **Use logging to rapidly debug.** Feeding log messages back into the model when it has issues enables it to rapidly identify and fix issues. Include detailed debug-level logs in the code when on the branch, this can always be removed / reduced when you refactor at the end of the feature. 

- **Consider Complexity**: As the codebase grows larger and more complex, the scope of tasks given to the LLM needs to be increasingly specific. If the scope is too broad, the LLM may make assumptions or overlook details due to its limited context window.

- **Old Library Versions**: Models will default to versions of libraries that were current at the time they where trained. For cutting-edge libraries, you may need to explicitly reference updated versions. Use the @Web annotation to fetch the latest versions or override defaults as needed.

- **Thinking 'Script First'**: The models are very good at writing scripts, such as bash scripts, to perform repetitive tasks. 

- **Terminal Commands**: IDEs like cursor and windsurf also have integration with the command line, meaning that you can often write your intention in plain english and have the model generate the appropriate terminal command. 