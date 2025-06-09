# Refactoring

Refactoring is an important step, just like with human-generated code. Refactoring improves code readability, maintainability, and performance by restructuring existing code without changing its functionality. This makes it easier to debug, extend, and scale.

Consider that AI-generated code follows the guidelines and prompts elsewhere in this playbook to give the best possible code quality and consistency. However, models are nondeterministic and can generate similar functionality using slightly different approaches or conventions.

When refactoring AI-generated code, do this step with close human supervision. Prompt the model with specific things to refactor. Telling the model to refactor in general will give unexpected results.

For example, prompt the model to move some logic into a reusable function, or to move logic from a presentation class to a service class, or prompt it to change one module to copy the conventions in another module.

## Guidelines

- **Refactor at the end of each feature**: Review and refactor code as part of each feature implementation to ensure consistency and maintainability. Similar to the principle of "Red Green Refactor" in TDD, do "Gen Test Refactor"

- **Prompting for Refactoring**: Write prompts that guide AI tools to refactor specific areas of code. Do not prompt it to refactor generally. Refer to [prompt-refactor-feature](../../pages/appendix/prompt-library/refactoring/prompt-refactor-feature.md) for an example.

- **Collaborative Refactoring**: First, work with AI tools to identify areas for refactoring, such as overly complex methods or duplicate code, or areas that do not meet the AICA rules. Then guide the model on what specific things it should refactor 

- **Enforce Standards**: Define coding standards with tools like AICA rules files to guide AI tools in following code style and design preferences.

## [Next -> Documentation](documentation.md)





 