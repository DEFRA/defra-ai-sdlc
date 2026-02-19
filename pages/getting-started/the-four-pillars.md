# The Four Pillars

To generate consistent code, four elements must come together as shown in this diagram:

![](attachments/venn-diagram-consistent-code.png)

*Image: Venn diagram showing the intersection of elements for consistent AI code generation*

## The Four Elements

### 1. Clear Requirements

**Purpose:** Define the functional and technical requirements for the product or service idea you want to implement. Be detailed and clear.

**Where to create:** Use an advanced "thinking" chat model like Claude or ChatGPT.

**Reference:** [Generating Requirements Workflow](../generating-requirements/README.md)

### 2. Good Prompts

**Purpose:** Create clear, detailed requests for specific tasks. You can refer to the IDE rules and the requirements. However, you don't need to repeat what's in the rules or requirements in the prompt.

**Where to create:** Create prompts manually at first but then refine them using a chat model like Claude or ChatGPT.

**Reference:** Prompt engineering and meta prompting is explained further in the [Prompting Guidance](../appendix/prompt-library/prompting-guidance.md)

### 3. Rules and Instructions for AI

**Purpose:** Rules and instructions define consistent and repeatable standards, patterns and conventions across your codebase.

**Where to create:** Rule and instruction file formats are defined by your AI Coding Assistant. To help generate the content itself, use a chat model like Claude or ChatGPT.

**Reference:** [Rules and Instructions for AI](../appendix/rules-for-ai)

### 4. Capable Code Generation Model

**Purpose:** Use the most capable LLM model for the task you are running to get good quality results. Not all tasks need advanced models, so select the most cost-effective model that can achieve the outcome you want.

**Where to create:** The AI IDE tools typically let you select which model to use when prompting the LLM.

**Reference:** [Choosing Models](choosing-models.html) — detailed guidance on model tiers, task matching and cost awareness

## Next steps

Read and understand the detailed [Prompting Guidance](../appendix/prompt-library/prompting-guidance.md) before you start.

## [Next -> Choosing Models](choosing-models.html)