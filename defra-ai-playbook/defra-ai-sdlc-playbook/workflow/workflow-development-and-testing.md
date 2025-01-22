# Development and Testing

This section outlines the recommended process for developing features using an AI-powered development workflow. By adhering to these steps, you can optimise collaboration with coding language models (LLMs) while maintaining code quality and project organisation.

## Prerequisites

1. **Feature Requirement PRD**: Ensure there is a detailed Product Requirement Document (PRD) for the feature stored in the code repository. The PRD should be accessible to the AI-powered IDE.
2. **Clean Codebase**: Verify that the codebase is in a clean state:
    - All tests pass with good coverage.
    - Documentation is up to date.
    - Refactoring has been completed where necessary.
    - Git changes are committed and pushed.

## Development Workflow

### 1. Select Features for Development

- Choose the features or sub-features to develop.
- Limit the scope to a manageable set of changes to prevent the LLM from making overly broad assumptions.
- Leverage the PRD to provide the LLM with the necessary context for structuring files and data models.

### 2. Create a Development Branch

- Create a new git branch dedicated to the feature. For example, `feature/add-todo-task`.

### 3. Prompt the AI IDE

- Use an AI IDE in “Cascade” or “Agent” mode to implement the feature.
- Example prompt (note the '@' notation to refer to a specific file in the IDE):
```
Please implement feature '1.2 Add Todo Task' from @prd-task-management.md. Make sure you understand all the requirements clearly. Examine the whole of the codebase and any documentation, think step by step, and create a plan before you implement.
```
### 4. Monitor and Evaluate Progress

- As the AI generates the code, monitor its plan to ensure it aligns with your expectations.
- After completion, review the changes in the git diff viewer.
    - If changes are unexpected or involve large deletions, revert all changes, refine your prompt, and try again.
    - 🚀 Pro Tip: If the llm makes file changes that contain large blocks of deleted code you don't expect, it's better to back out of those changes and try again with a different prompt rather than try to 'fix' the changes or asking it to restore the code. You can revert at any time, even if you've invest a good amount of time debugging.

### 5. Initial Testing and Iteration

- Test the generated feature manually to ensure functionality.
- Iterate as needed, verifying each code change aligns with expectations.

### 6. Ensure Test Coverage

- Use prompt templates from your prompt library to ensure comprehensive test coverage for the new feature.
- Run all tests to confirm they pass successfully.

### 7. Refactoring

- Perform a “red-green-refactor” cycle if needed:
    - Red: Add failing tests to highlight areas needing improvement.
    - Green: Implement changes to make tests pass.
    - Refactor: Clean up code without changing its behaviour.
- Use the AI IDE’s chat mode to identify refactoring opportunities.

### 8. Code Review

- Conduct a thorough code review by walking through the git diff for every change.
- Make manual corrections or enhancements if required.

### 9. Documentation

- Prompt the AI to update or create relevant documentation in the repository’s architecture folder.
- Update the `README.md` and `.cursorrules` files as necessary. Maintaining clear and up-to-date documentation ensures better context for future development cycles.

### 10. Finalise and Merge

- Push the feature branch to the repository and merge it into the main branch after acceptance.
- Delete the feature branch after merging.

### 11. Reflect and Optimise Prompts

- Analyse your prompts and ask the LLM for feedback on how to improve future prompt writing.
- Incorporate feedback into your prompt library for continuous improvement.

## Gotchas to Avoid

- **Context Window Limitations**: As the codebase grows more complex, the scope of tasks given to the LLM needs to be increasingly specific. If the scope is too broad, the LLM may make assumptions or overlook details due to its limited context window.
    
- **Iterative Loops Indicate Prompt Issues**: If you find yourself needing to go through multiple iterations (2-3 loops) to get usable output, it’s likely that your initial prompt was unclear or incomplete. Stop, revert all changes, refine your prompt or the PRD, and restart the process.
    
- **Old Library Versions**: LLMs often default to using older versions of libraries. For cutting-edge tools or features (e.g., Anthropics, MCP, or new agent libraries), you may need to explicitly reference updated versions. Use @web to fetch the latest versions or override defaults as needed.