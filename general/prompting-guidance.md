# Prompting Guidance

Effective prompting is essential for leveraging the full potential of large language models (LLMs). By crafting thoughtful, specific, and context-aware prompts, you can achieve higher-quality outputs and streamline workflows. This guide provides practical guidance and strategies to enhance your prompting skills.

As an LLM has been trained on almost the entirety of the internet,  it can generate content about many different topics. The intention for your prompt is to give the LLM enough information so it can contextualise it's answer appropriately and to provide it useful instructions to detail how it should respond.

## Playbook Prompt Library

The [Playbook Prompt Library](../prompt-library/README.md) provides a curated selection of prompts proven to optimize your use of AI tools. Designed to streamline workflows and enhance precision, these examples are ready to use or adapt to fit your specific needs. Leverage this resource to accelerate development, reduce iteration, and achieve consistent, effective results.

## General Principles

### Be Specific and Verbose

- Ambiguous or overly brief prompts can lead to unpredictable or generic responses.
	- Provide clear instructions, context, and examples when applicable.
- Include details about the format, tone, or structure of the desired output. 
	- For instance, instead of asking, _"Summarise this text,"_ say, _"Summarise this text in bullet points focusing on key events and their impacts."_

### Encourage Step-by-Step Reasoning

- To enhance the output for logical reasoning or complex tasks, explicitly ask the LLM to "think step by step." For example:
    - _"Analyse the pros and cons of this decision step by step."_
    - _"Break down the steps needed to achieve this goal."_
    - Coding specific example: _"Before you fix this issue, think step-by-step and come up with a plan. consider the whole of the codebase before making any changes."_
- This approach improves the coherence and depth of the response.
- Most content the LLM has been trained on will not look like this. Meaning explicitly stating you want a step-by-step reasoning will enhance the response.

### Avoid the Lazy Doom Loop

- When iteratively refining outputs, it’s easy to fall into a cycle of issuing one-word or overly simple prompts. This "lazy doom loop" results in a lack of clarity and compounds errors.
- Instead:
    1. Pause and assess the current output.
    2. Explicitly instruct the tool to reconsider its approach or address specific concerns.
    3. Rollback and reformulate initial prompt to guide the model toward better solutions.

### Iterate Thoughtfully

- If a solution requires multiple loops of refinement, the initial prompt will need revision. 
- After 2-3 iterations, revert to the starting point, refine the prompt, or redefine the product requirement document (PRD), then restart.

## Handling Complexity

### Narrow the Scope as Complexity Increases

- As the task or codebase becomes more complex, narrow the scope of the prompt to focus on specific components or objectives.
    - Example: Instead of asking, _"Fix all issues in this code,"_ specify, _"Refactor the database query function to improve efficiency while maintaining existing functionality."_
- Small context windows (amount of text you can send to an LLM in a single call) in current LLMs can limit their ability to handle large or sprawling tasks. 
- Breaking tasks into smaller, manageable pieces is crucial until this limitation is addressed in future iterations.
- Considering referencing specific documents or files within your prompt instead of relying on the LLMs retrieval capabilities

## Prompt Engineering Strategies

### Define the Scope

- Clearly articulate the boundaries of the task. Include constraints, priorities, and specific deliverables to minimise ambiguity.

### Plan and Test Prompts

- Before deploying prompts for high-stakes or complex tasks, test them on smaller examples to ensure clarity and effectiveness.
- Use LLMs to assist in generating and refining prompts. For example:
    - _"Draft a prompt to summarise research papers on climate change with a focus on technological innovations."_
- Consider using different LLMs providers (eg. OpenAI, Anthropic) to get multiple different 'opinions' on your prompt. They will often generate different results.
- Review your final prompt to ensure it still matches your original intentions.

### Use Contextual Markers (@docs, @web, etc.)

- Leverage tools or commands in AI-powered IDE tools like `@docs` or `@web` to pull in relevant external information or documentation. This enriches the context and can lead to more accurate and targeted results.

## Avoiding Common Pitfalls

### Address Misalignment Early

- If outputs are consistently misaligned with expectations, revisit your prompt. Consider:
    - Is it too vague or overly broad?
    - Does it lack sufficient context or examples?
    - You can even ask a LLM like ChatGPT if the requirements are to vague and for assistance.

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
    - _"Provide three alternative prompts for summarising technical documents."_
