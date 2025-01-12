# Defra AI in SDLC Playbook
## Version 0.1

## Table of Contents
- [Overview](#overview)
- [What is AI / LLMs](#what-is-ai--llms)
- [Where you can / can't use AI at Defra](#where-you-can--cant-use-ai-at-defra)
- [Portfolio Management](#portfolio-management)
- [SDLC Assurance Standards](#sdlc-assurance-standards)
- [Project Onboarding](#project-onboarding)
- [Project Stages](#project-stages)
- [Best Practices](#best-practices)
- [General Productivity](#general-productivity)
- [Appendix](#appendix)

## Overview
*Overview content goes here*

## What is AI / LLMs
### Core Concepts
* **Large Language Models (LLMs)**: Advanced AI systems trained on vast amounts of text data to understand and generate human-like text responses
* **Data Training**: The process of feeding large datasets to AI models to help them learn patterns, relationships, and generate appropriate outputs
* **RAG vs Finetune**: Comparison between Retrieval-Augmented Generation (adding context dynamically) and fine-tuning (specialized model training)
* **Agents / Agentic AI**: AI systems capable of taking autonomous actions based on objectives and context

### Considerations
* **Pros and Cons**: Detailed analysis of benefits and limitations when implementing AI solutions
* **Environmental Impact**: Assessment of computational resources and energy consumption in AI operations

## Where you can / can't use AI at Defra
*Guidelines and policies specific to Defra's AI usage*

## Portfolio Management
### AI Project Tracking and Metrics
*Framework for monitoring AI initiatives*

## Best Practices

### Development
* **AI Checking Tools**: Guidelines for code review and validation using AI
* **Tool Selection**: Criteria for choosing appropriate AI tools
* **Usage Guidelines**: Clear parameters for when and where to implement AI
* **Workflow Integration**: Best practices for incorporating AI into development processes
* **Pair Programming**: Strategies for effective collaboration with AI assistance

### Testing and QA
* **Validation Tools**: AI-powered testing and quality assurance tools
* **Implementation Strategies**: Frameworks for effective AI integration in testing
* **Best Practices**: Guidelines for maintaining testing integrity with AI
* **Workflow Optimization**: Processes for streamlining testing procedures
* **Collaborative Testing**: Approaches for team-based testing with AI support

## General Productivity
### Prompting Best Practices
*Guidelines for effective AI interaction and prompt engineering*

## Appendix
* **Demonstrations**: Practical examples of AI implementation
* **Proof of Concepts**: Documented trials and experiments
* **Code Repositories**: Links to relevant Git repositories

*Note: The remaining sections (Project Stages, Service Design, etc.) should be expanded with similar detailed content following the established format.*

**Logging and Debugging**
- 

**Tools**
With disclaimer
IDEs
Windsurf
Cursor
Obsidian
OpeanAI & Calude
Tree (brew)
Mermaid
Markdown formatting

```
# Coding Design Choices by the LLM

Cursor seems to start coding with an object oriented approach when coding Python. The rationale being that the initial libraries we used favor OO approaches. An area to monitor would be when we start using libraries where the community favors other approaches will get a mismatch in coding style throughput the repo.

We assume we could change or force the style with prompting in the .cursorrules file if needed
```

## Implementing feature workflow
1. create new branch
2. PRD prompt creation
	1. create prd in gpt o1
3. review and run prd implementation prompt, include @rules.md file and link to the `architecture` folder
4. Accept code changes, use git diffs for validation
5. fix errors and test
6. add tests and ensure they pass
	1. creating tests for specific files is more targeted and less likely to go wrong
	2. Make sure it doesn't change the implementation, but only test what already exists
7. ensure code coverage is good
8. update documentation
9. update readme and/or .cursorrules file if needed
10. check in branch and create PR
11. merge PR and remove branch
12. Consider taking the prompt generated and output and feed it back in to an llm to ask how it would improve the prompt (feedback loop)

**Mindset**

**Future considerations**
- AI Agentic frameworks
- MCP servers