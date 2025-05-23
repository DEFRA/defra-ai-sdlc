# Generating Consistent Code

To generate consistent code, multiple elements must come together as depicted in this diagram:

![](attachments/venn-diagram-consistent-code.png)

*Image: Venn diagram depicting the intersection of elements for consistent AI code generation*

| Element                       | Purpose                                                                                                                                                                                                                                  | Where created                                                                                                                                                                                                                                                             |
| ----------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Clear Requirements            | Defines (with detail and clarity) the functional and pseudo-technical requirements for the product/service idea you want to implement.                                                                                                   | Using an advanced "thinking" chat model like Claude or ChatGPT.<br>- Ref: [Product Requirements Workflow](../feature-development/product-requirements.md)                                                                                                                 |
| Good Prompts                  | The clear, detailed ask for a given task. It can refer to the IDE rules and the requirements, however, it is not necessary to repeat what's in the rules or requirements in the prompt.                                                  | Prompts are initially created manually but then can be further refined using a chat model like Claude or ChatGPT.<br>- Prompt engineering and meta prompting is explained further in the playbook: [Prompting Guidance](../appendix/prompt-library/prompting-guidance.md) |
| IDE Rules for AI              | IDE rules define consistent and repeatable standards, patterns and conventions across the codebase. Rules can be applied for each task-specific prompt.                                                                                  | Rule file formats are usually defined by the AI IDE tool. To aid in generating the rules themselves, a chat model like Claude or ChatGPT can be used.<br>- Ref: [Language-specific playbook rules files](../appendix/language-specific)                         |
| Capable Code Generation Model | Using the most capable LLM model for the task you are running is important for good quality results. Not all tasks require advanced models, so selection of the most cost-effective model that can achieve the desired outcome is ideal. | The AI IDE tools typically allow the user to select which model is used when prompting the LLM.<br>- Currently, the latest Claude Sonnet models are recommended starting models for quality code generation.                                                              |

## Next steps

We advise reading and understanding the detailed [Prompting Guidance](../appendix/prompt-library/prompting-guidance.md) before you start.

## [Next -> Project Setup](project-setup.md)