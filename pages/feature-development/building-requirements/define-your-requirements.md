# Define your requirements

This first stage focuses on quickly capturing all your knowledge about a feature. Don't aim for perfection - just get
everything written down so you can refine it later.

## Prerequisites

Before you start, ensure you have:

1. **Prioritised feature requirements** - Work with stakeholders to identify and agree on key features that align with
   project goals
2. **Advanced reasoning model** - Use the most capable LLM available (like thinking models) for heavy analysis and
   product work
3. **Clear project scope** - Make sure each feature is well-defined to avoid ambiguities

## Create your product requirements input

Start by creating a comprehensive markdown document that captures everything about your feature. Write quickly without
worrying about structure or polish.

Document everything you can think of:

- Feature overview and purpose
- Frontend and backend needs
- Data model guidance
- Your preferences about the best approach
- Business rules and edge cases
- Security considerations
- etc

Don't worry about spelling, formatting, or repetition. Write in whatever style comes naturally. You'll use AI to clean
it up later.

See [example-product-requirements-input](../../appendix/prompt-library/product/example-product-requirements-input.md)
for a template to get you started.

## Map your high-level architecture

With your requirements documented, work with AI to create a simplified architecture diagram. This visual representation
helps ensure everyone understands the intended implementation.

The appropriate detail level depends on your project:

- **Greenfield projects**: Focus on major components and their interactions
- **Legacy systems**: Map specific classes or modules you'll modify
- **Microservices**: Show service boundaries and communication patterns

For example, a greenfield project might produce something like
this [High-Level Architecture](../attachments/high-level-architecture.png).

Use [prompt-high-level-architecture](../../appendix/prompt-library/product/prompt-high-level-architecture.md) to start,
then have a conversation with the AI to refine the diagram.

## [Next -> Document your constraints](document-your-constraints.md)