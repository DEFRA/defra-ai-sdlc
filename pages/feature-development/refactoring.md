# Refactoring

Refactoring is important for AI-generated code, as it is for human-generated code.

Supervise AI-generated code refactoring closely. Give the model specific refactoring tasks. Asking the model to refactor generally will likely give unintended or unexpected results.

For example, ask the model to move logic into a reusable function, move logic from a presentation class to a service class, or change one module to copy conventions from another module.

## Guidelines

- **Refactor at the end of each feature**: Review and refactor code as part of each feature implementation to maintain consistency and make it easier to maintain.

- **Give specific refactoring prompts**: Write prompts that guide AI to refactor specific areas of code. Refer to [prompt-refactor-feature](../../pages/Resources-Tools/prompt-library/refactoring/prompt-refactor-feature.md) for an example.

- **Work together on refactoring**: First, work with AI to identify areas for refactoring, such as overly complex methods, duplicate code, or areas that do not meet the AI rules. Then guide the model on what specific things it should refactor.

{% include page-navigation.html 
   prev_url="testing" 
   prev_title="Testing" 
   next_url="documentation" 
   next_title="Documentation" %}
