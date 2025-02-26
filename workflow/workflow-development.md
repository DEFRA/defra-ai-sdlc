# Development

This section outlines the recommended process for developing features using an AI-powered development workflow. 

## Prerequisites

1. **Feature Requirement PRD**: Ensure there is a detailed Product Requirement Document (PRD) for the feature stored in the code repository. The PRD should be accessible to the AI-powered IDE.
2. **Clean Codebase**: Verify that the codebase is in a clean state:
    - All tests pass with good coverage.
    - Documentation is up to date.
    - Refactoring has been completed where necessary and all code is implemented consistently.
    - Git changes are committed and pushed.

## Development Workflow

### 1. Select Features for Development

- Choose the features or sub-features to develop.
- Limit the scope to a manageable set of changes to prevent the LLM from making overly broad assumptions.
- Leverage the PRD to provide the LLM with the necessary context for structuring files and data models.

### 2. Create a Development Branch

- Create a new git branch dedicated to the feature. For example, `feature/add-todo-task`.

### 3. Prompt the AI IDE

- Use an AI IDE in "Cascade" or "Agent" mode to implement the feature.
- Use prompt templates from your prompt library - [prompt-new-feature](../prompt-library/prompt-new-feature.md)
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
  - [Adding New Tests](../prompt-library/testing/prompt-add-new-test.md)
  - [Adding Test Coverage](../prompt-library/testing/prompt-add-test-coverage.md)
  - [Adding Functional Tests](../prompt-library/testing/prompt-add-functional-test.md)
  - [Adding E2E Tests](../prompt-library/testing/prompt-add-e2e-test.md)
- Run all tests to confirm they pass successfully.
- Verify test coverage meets team standards (typically 80% or higher)

### 7. Refactoring

- Similar to "red-green-refactor" approach in traditional software engineering, refactor your code after adding tests. This ensures that your feature is implemented consistently, there is code reuse, but the behaviour is not changed.
- General "please refactor the codebase" prompts do not work well. We have much more success when we instruct the model on specific things we want it to refactor. Visit the [Prompt Library](../prompt-library/README.md) for examples of well-formed refactoring workflow prompts.

### 8. Code Review

- At each step above, conduct a thorough code review by walking through the git diff for every change.
- Make manual corrections or enhancements if required.

### 9. Documentation

- Prompt the AI to update or create relevant documentation in the repository's architecture folder, including regular updates to the data models, implementation specifics and general architecture. Use the [prompt-add-architecture-docs](../prompt-library/documentation-writing/prompt-add-architecture-docs.md) and [prompt-update-documentation](../prompt-library/prompt-update-documentation.md) prompts for this purpose.
- Update the `README.md` and `.cursorrules` files as necessary. Maintaining clear and up-to-date documentation ensures better context for future development cycles.

### 10. Finalise and Merge

- Push the feature branch to the repository and merge it into the main branch after acceptance.
- Delete the feature branch after merging.

### 11. Reflect and Optimise Prompts

- Analyse your prompts and ask the LLM for feedback on how to improve future prompt writing.
- Incorporate feedback into your prompt library for continuous improvement.
- Run at team retrospective to reflect and improve ways of working

## Gotchas to Avoid

- **Context Window Limitations**: As the codebase grows more complex, the scope of tasks given to the LLM needs to be increasingly specific. If the scope is too broad, the LLM may make assumptions or overlook details due to its limited context window.
    
- **Iterative Loops Indicate Prompt Issues**: If you find yourself needing to go through multiple iterations (2-3 loops) to get usable output, it's likely that your initial prompt was unclear or incomplete. Stop, revert all changes, refine your prompt or the PRD, and restart the process.
    
- **Old Library Versions**: LLMs often default to using older versions of libraries. For cutting-edge tools or features (e.g., Anthropics, MCP, or new agent libraries), you may need to explicitly reference updated versions. Use @web to fetch the latest versions or override defaults as needed.