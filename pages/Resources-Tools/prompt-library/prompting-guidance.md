# Prompting Guidance

Effective prompting is essential for harnessing the full potential of large language models (LLMs). By crafting thoughtful, specific, and context-aware prompts, you can achieve superior outputs and streamline workflows. This guide outlines practical strategies to enhance your prompting skills as part of this government playbook.

As LLMs have been trained on a vast array of internet content, they can generate responses on diverse topics. The objective of your prompt is to supply sufficient context and detailed instructions so that the model can provide a well-informed and precise response.

## Prompt Library

The [Playbook Prompt Library](README.md) presents a curated collection of prompts that have been proven to optimise the use of AI development tools. These examples can be tailored to meet your specific requirements.

## The Fundamentals of a Good Prompt

A well-crafted prompt centres on clarity. LLMs produce the best results when given precise instructions and a clearly defined scope. Consider these essential elements when designing your prompts:

- **Context:** Provide the necessary background. For example, begin with: *"Programming in Python within a microservices architecture…”*
- **Role:** Specify the required expertise or persona. For instance: *“You are an experienced software engineer with specialised knowledge in JavaScript.”*
- **Tasks:** Clearly delineate the tasks. Break down your request into actionable steps—such as analysing requirements, planning tests, and implementing solutions. For example: *"First, summarise your understanding of the requirements. Next, conduct a codebase analysis to identify current conventions and patterns. Then…"*
- **Constraints:** Outline any restrictions. For example: *“Do not implement sections outside the specified requirements.”*
- **Examples:** Provide sample outputs to set clear expectations. For example: *"The document should be structured as follows…”*
- **Output Format:** When possible, indicate the desired format. For example: *"Create a detailed user story document in markdown, outlining the following feature requirements. Please provide the content for a file named story.md in a markdown code block."*

You need not include every element in every prompt. Use this as checklist to help create well-formed prompts that yield accurate and consistent results.

## Practical Guidelines

The following guidelines are founded on two key principles:
1. Provide clear and detailed prompts.
2. Collaborate with the models to achieve optimal outcomes, treating them as interactive colleagues rather than one-off tools.

### Be Specific and Verbose

- Ambiguous or overly brief prompts can lead to unpredictable or generic responses. Ensure that you provide clear instructions, sufficient context, and illustrative examples.
- Adhere to the fundamentals above to guarantee that every critical detail is covered.

### Use Meta-Prompting

- "Meta prompting" involves asking the LLM to refine or improve your prompt. This is a highly effective technique.
- Apply this approach for every model you use. For example, if you are going to use Claude, request Claude itself to review and enhance your prompt.
- For example: *"I’m drafting a prompt to implement a user story using Claude 3-7 Sonnet and Cursor IDE. Please provide an improved version for this purpose."*
- Many of the examples in the prompt library have been refined using this technique.

### Generate Variants

- When uncertain about the optimal phrasing, request multiple versions of the prompt.
- For example: *"Provide three alternative prompts for summarising technical documents."*
- Consider consulting different LLM providers (e.g. OpenAI, Anthropic) to gain varied perspectives, as they may generate distinct responses.

### Problem Solve Collaboratively

- For complex projects, break the task into interactive steps rather than expecting a complete solution in one go. A multi-turn dialogue enables you to gradually build context and refine outputs.
- For example, split the work into phases, such as analysis and implementation:
    1. Begin with a comprehensive analysis of the issue and potential solutions, without making any edits.
    2. Then, use the analysis as a basis for implementing specific changes.
    3. Instruct the IDE to plan rather than generate code immediately. For instance: *“Outline the steps you will follow and prompt me for feedback before proceeding.”* Following this, you can ask it to execute some or all of its plan.
- Alternatively, focus on one section at a time. For example: *“Analyse this product requirements document and only implement section 5.1. Do not address any other sections.”*

### Avoid the "Doom Loop"

- Iterative refinement can sometimes lead to a cycle of overly simplistic prompts, where the tools make rapid changes without any sort of planning or reflection, resulting in a lack of clarity and compounded errors.
- Instead, roll back and reformulate the initial prompt to guide the model towards more effective solutions.

### Ask for Feedback

- If your process involves several unintended iterations, conclude by asking: *"What was missing from the original prompt (and/or file) that contributed to the issues?"*
- This feedback can be invaluable in refining future prompts.

### Narrow the Scope as Complexity Increases

- As tasks or codebases become more complex, narrow your prompt to focus on specific components or objectives.
- Reference particular documents or files within your prompt instead of relying solely on the model’s internal retrieval capabilities.
- Phrasing such as "...make targeted edits" helps the model modify only the necessary parts, avoiding unnecessary changes.

### Encourage Step-by-Step Reasoning

- For complex tasks, explicitly ask the LLM to "think step by step." For example: *"Before addressing this issue, outline a step-by-step plan considering the entire codebase."*
- This approach may not be necessary with reasoning models.

### Use Contextual Markers (@docs, @web, etc.)

- Leverage tools or commands available in AI-powered IDEs, such as `@docs` or `@web`, to incorporate relevant external information or documentation. This additional context can lead to more accurate and targeted responses.

### Be Multimodal

For UI development or troubleshooting, provide visual context by either:
- Uploading screenshots of the UI issues, or
- Including pertinent markup from the browser.

{% include page-navigation.html 
   prev_url="./" 
   prev_title="Prompt Library" 
   next_url="../rules-for-ai/" 
   next_title="Rules for AI" %}
