# Prompting Guidance

Effective prompting is essential for leveraging the full potential of large language models (LLMs). By crafting thoughtful, specific, and context-aware prompts, you can achieve higher-quality outputs and streamline workflows. This guide provides practical guidance and strategies to enhance your prompting skills.

## General Principles

### Be Specific and Verbose

- Ambiguous or overly brief prompts can lead to unpredictable or generic responses. Provide clear instructions, context, and examples when applicable.
- Include details about the format, tone, or structure of the desired output. For instance, instead of asking, _"Summarize this text,"_ say, _"Summarize this text in bullet points focusing on key events and their impacts."_

### Encourage Step-by-Step Reasoning

- To enhance logical reasoning or complex tasks, explicitly ask the LLM to "think step by step." For example:
    - _"Analyze the pros and cons of this decision step by step."_
    - _"Break down the steps needed to achieve this goal."_
    - Coding specific example: _"Before you fix this issue, think step by step and come up with a plan. consider the whole of the codebase before making any changes."_
- This approach improves the coherence and depth of the response.

### Avoid the Lazy Doom Loop

- When iteratively refining outputs, it’s easy to fall into a cycle of issuing one-word or overly simple prompts. This "lazy doom loop" results in a lack of clarity and compounds errors.
- Instead:
    1. Pause and assess the current output.
    2. Explicitly instruct the tool to reconsider its approach or address specific concerns.
    3. Reformulate prompts to guide the model toward better solutions.

## Handling Complexity

### Narrow the Scope as Complexity Increases

- As the task or codebase becomes more complex, narrow the scope of the prompt to focus on specific components or objectives.
    - Example: Instead of asking, _"Fix all issues in this code,"_ specify, _"Refactor the database query function to improve efficiency while maintaining existing functionality."_
- Small context windows (amount of text you can send to an LLM in a single call) in current LLMs can limit their ability to handle large or sprawling tasks. Breaking tasks into smaller, manageable pieces is crucial until this limitation is addressed in future iterations.

### Iterate Thoughtfully

- If a solution requires multiple loops of refinement, the initial prompt may need revision. After 2-3 iterations, revert to the starting point, refine the prompt, or redefine the product requirement document (PRD).

## Prompt Engineering Strategies

### Define the Scope

- Clearly articulate the boundaries of the task. Include constraints, priorities, and specific deliverables to minimize ambiguity.

### Plan and Test Prompts

- Before deploying prompts for high-stakes or complex tasks, test them on smaller examples to ensure clarity and effectiveness.
- Use LLMs to assist in generating and refining prompts. For example:
    - _"Draft a prompt to summarize research papers on climate change with a focus on technological innovations."_

### Use Contextual Markers (@docs, @web, etc.)

- Leverage tools or commands in AI-powered IDE tools like `@docs` or `@web` to pull in relevant external information or documentation. This enriches the context and can lead to more accurate and targeted results.

## Avoiding Common Pitfalls

### Address Misalignment Early

- If outputs are consistently misaligned with expectations, revisit your prompt. Consider:
    - Is it too vague or overly broad?
    - Does it lack sufficient context or examples?

### Manage Iterative Refinement

- Resist the urge to continually tweak outputs without revisiting the initial problem statement. Instead, ask yourself:
    - _"Is this task still aligned with my original goal?"_
    - _"Am I providing clear and actionable feedback?"_

## Leveraging LLMs for Better Prompts

### Meta-Prompting

- Use the LLM itself to refine your prompting strategy:
    - _"How can I improve this prompt to get better results?"_

### Generate Variants

- When uncertain about the best phrasing, ask the LLM to generate multiple versions of a prompt:
    - _"Provide three alternative prompts for summarizing technical documents."_
