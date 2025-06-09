# The Four Pillars for Generating Consistent Code

To generate consistent code, four elements must come together as shown in this diagram:

![](attachments/venn-diagram-consistent-code.png)

*Image: Venn diagram showing the intersection of elements for consistent AI code generation*

## The Four Elements

### 1. Clear Requirements

**Purpose:** Defines (with detail and clarity) the functional and pseudo-technical requirements for the product/service idea you want to implement.

**Where created:** Use an advanced "thinking" chat model like Claude or ChatGPT.

**Ref:** [Product Requirements Workflow](../feature-development/product-requirements.md)

### 2. Good Prompts

**Purpose:** The clear, detailed ask for a given task. It can refer to the IDE rules and the requirements, however, you don't need to repeat what's in the rules or requirements in the prompt.

**Where created:** Create prompts manually at first but then refine them using a chat model like Claude or ChatGPT.

**Ref:** Prompt engineering and meta prompting is explained further in the [Prompting Guidance](../appendix/prompt-library/prompting-guidance.md)

### 3. IDE Rules for AI

**Purpose:** IDE rules define consistent and repeatable standards, patterns and conventions across your codebase. Apply rules for each task-specific prompt.

**Where created:** Rule file formats are usually defined by the AI IDE tool. To help generate the rules themselves, use a chat model like Claude or ChatGPT.

**Ref**: [Language-specific playbook rules files](../appendix/language-specific)

### 4. Capable Code Generation Model

**Purpose:** Use the most capable LLM model for the task you are running to get good quality results. Not all tasks need advanced models, so select the most cost-effective model that can achieve the outcome you want.

**Where created:** The AI IDE tools typically let you select which model to use when prompting the LLM.

## Next steps

We recommend reading and understanding the detailed [Prompting Guidance](../appendix/prompt-library/prompting-guidance.md) before you start.


## [Next -> Project Setup](project-setup.md)