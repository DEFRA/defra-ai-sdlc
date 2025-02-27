# Refactoring

As with human generated code, refactoring is an important step. Refactoring improves code readability, maintainability, and performance by restructuring existing code without changing its functionality, making it easier to debug, extend, and scale.

It's also important to consider that for AI generated code, whilst following the guidelines and prompts elsewhere in this playbook will give the best possible code quality and consistency, but models are nondeterministic and can generate similar functionality using slight different approaches or conventions.

When it comes to AI-generated code, it is important that the refactoring step is done with close human supervision.  With the person prompting the model specific things to refactor. Simply telling the model to refactor in general will give unexpected results.  

For example, a person might prompt the model to move some logic into a reusable function, or to move logic from a pretension class to a service class, or prompt it to change one module to copy the conventions in another module.

## Guidelines

- **Refactor at the end of each feature**: Perform code reviews and refactor code as part of each feature implementations to ensure consistency and maintainability. Similar to the principle of "Red Green Refactor" in TDD, do "Gen Test Refactor"

- **Prompting for Refactoring**: Craft prompts that guide AI tools to refactor specific areas of code. Do not prompt it to just refactor.  Refer to [prompt-refactor-feature](../prompt-library/refactoring/prompt-refactor-feature.md) for an example.

- **Collaborative Refactoring**: First, collaborate with AI tools to identify areas for refactoring, such as overly complex methods or duplicate code, or areas that do not meet the IDE rules. Then follow up by guiding the model as to what specific things it should refactor 

- **Enforce Standards**: Define coding standards with tools like IDE rules files to guide AI tools in adhering to code style and design preferences.





 