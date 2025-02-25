# Documentation and Feedback

## Overview

Leveraging an AI-powered development workflow, such as utilising large language models (LLMs), makes it easier to create and maintain high-quality, readable documentation. This section outlines best practices for incorporating documentation into your development workflow and how to maximise the benefits of LLM capabilities.

## Maintaining Up-to-Date Documentation

### Regular Updates

During the normal development workflow, it is essential to update documentation every time you make a change. This practice not only benefits human collaborators but also ensures the LLM has an accurate understanding of the current state of the codebase.

ensure that the corresponding documentation is revised to reflect these changes. This practice not only benefits human collaborators but also ensures the LLM has an accurate understanding of the current state of the codebase.

Use the [prompt-add-architecture-docs](../prompt-library/documentation-writing/prompt-add-architecture-docs.md) and [prompt-update-documentation](../prompt-library/prompt-update-documentation.md) prompts to have the LLMs update the codebase documentation regularly.

### Embedding Documentation into Development

Consider documentation as an integral part of the development lifecycle (ref: [workflow-development-and-testing](workflow-development-and-testing.md)), not a separate task to be completed later. LLMs make it straightforward to maintain clear and consistent documentation as you work, generating drafts for function descriptions, usage guides, and even API documentation in real-time.

## Advanced Visual Documentation

### Creating Complex Visuals

LLMs can generate complex visual aids to support documentation, improving clarity and understanding. Examples include:

- **Sequence Flow Diagrams**: Use Mermaid to create diagrams that show, for example:
  - API request/response flows
  - User authentication processes
  - Data transformation pipelines
- **Conceptual Data Models**: Visualise system architecture using, for example:
  - Database schema diagrams
  - Service interaction maps
  - Component dependency graphs

These visuals help developers, stakeholders, and the LLM itself to contextualise the system's design and logic effectively.

## Establishing a Feedback Loop

### Documentation as a Knowledge Base

Good documentation is not merely a static reference; it creates a feedback loop for the LLM. By providing detailed, up-to-date information about the codebase, the documentation becomes a critical resource for:

- Assisting the LLM in understanding the context for future development tasks.
- Reducing the likelihood of errors or redundant changes in the code.
- Enhancing the LLM's ability to predictively generate solutions aligned with existing patterns and architecture.

### Scaling with the Codebase

As the codebase grows, the importance of comprehensive documentation increases. Without it, the LLM's effectiveness in managing and evolving the system diminishes. Regularly revisiting and enriching documentation ensures that both human and AI contributors can operate efficiently in a complex development environment.

## Best Practices

1. Treat documentation updates as part of your definition of "done" for each development task.
2. Use LLMs to draft, review, and refine documentation continuously.
3. Integrate tools like Mermaid for visualisation to enhance clarity.
4. Regularly review documentation to ensure accuracy, completeness, and relevance.

By embedding these practices into your development workflow, you can ensure a robust, scalable, and efficient system that benefits from both human and AI collaboration.