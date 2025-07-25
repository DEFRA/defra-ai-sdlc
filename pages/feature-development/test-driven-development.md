# Test Driven Development

This section outlines the process for doing test driven development. 

## Workflow

### Prerequisites

1. **Clear Requirements**: Detailed feature requirements with defined scope, as outlined in the [Product Requirements](product-requirements.md)
2. **Rules for AI**: Set up project [Rules for AI](../appendix/rules-for-ai) for consistent and repeatable standards, patterns and conventions across your codebase
3. **Capable Code Generation Model**: Ensure you're using the most capable LLM model for the task you are running to get good quality results

### 1. Create a new git branch

- Start with a new git branch dedicated to the feature.

### 2. Prompt the Coding Assistant

- Use an AI Coding Assistant (AICA) in Agent mode
- Use the three prompts in [prompt-test-driven-development](../appendix/prompt-library/development/prompt-test-driven-development.md) to do RED GREEN REFACTOR. 
- First run the prompt to do step 1. RED: Write failing tests. 
    - Reference your requirements files directly using the Coding Assistant Agent.
    - Review and refine the tests it generates
- Then run the prompt to do step 2. GREEN: Minimal code to pass. 
    - Review and refine the code generated
- Finally run the prompt to do step 3. REFACTOR: Improve while keeping tests green   
    - Review and refine the refactored code generated

### Follow-up tasks

- Create merge request for peer review
- Update documentation using [prompt-add-update-documentation](../appendix/prompt-library/documentation-writing/prompt-add-update-documentation.md)
- Update AI rules and prompt library based on lessons learned

## Guidelines

**Use an apporpriate model**: Ensure you are using a suitable model to implement this effecively.

**Get consistent results**: As per the four pillars, use the combination of [AI rules](../appendix/rules-for-ai), [prompts](../appendix/prompt-library) and clear [product requirements](product-requirements.md).

**Review everything generated**: You must review and refine everything generated by the agent.

## [Next -> Testing](testing.md)