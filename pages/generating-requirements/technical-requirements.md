# Technical requirements

Document the constraints that guide AI tools towards predictable, consistent results. Choose the level of detail that fits your project needs.

## Visualise your architecture

Create a simple architecture diagram to show how components fit together. The right level of detail depends on your project:

- **New projects**: Major components and interactions
- **Existing systems**: Classes or modules you'll change
- **Microservices**: Service boundaries and communication

Use [prompt-high-level-architecture](../../appendix/prompt-library/product/prompt-high-level-architecture.md) to generate diagrams, then refine through conversation.

## Getting started with technical foundations

Begin development by establishing the core technical elements. These foundational pieces determine how your entire system functions, so invest time getting these documents right from the start.

**Create your data models first** - Use [prompt-data-model-generation](../../appendix/prompt-library/product/prompt-data-model-generation.md) with your product requirements as context. Work iteratively until the model accurately represents your domain.
**Map system interactions with sequence diagrams** - Use [prompt-sequence-diagram](../../appendix/prompt-library/product/prompt-sequence-diagram.md) to visualise how different parts of your system communicate.
**Document your API specifications** - Generate clear API documentation using [prompt-api-requirements](../../appendix/prompt-library/product/prompt-api-requirements.md).
**List third-party dependencies** - Document any external tools or services.
**Define your directory structure** - Include preferred layouts in your AI rules files.

Each technical decision you make here shapes how the tools will build your application.

## Consolidate into reference documents

Combine individual artefacts into comprehensive documents that serve as single sources of truth.

**Architectural Decision Record (ADR)** - Use [prompt-architecture-decision-record](../../appendix/prompt-library/product/prompt-architecture-decision-record.md)

## Review your solution

Before moving to development, analyse your requirements using [prompt-product-analysis](../../appendix/prompt-library/product/prompt-product-analysis.md).

This analysis identifies gaps in documentation and spots alternatives you might have missed.

## Working effectively

**Iterate, don't perfect** - Use AI conversations to refine documents rather than aiming for perfection first time.
**Ensure accuracy** - Create concise, focused, bug-free documentation.
**Build incrementally** - Use each completed document as context for the next.

## [Next: Development](../feature-development/development.md)