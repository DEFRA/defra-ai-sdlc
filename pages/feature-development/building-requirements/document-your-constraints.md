# Document your constraints

Transform your initial requirements into precise, reviewable documentation that guides AI tools towards predictable
outcomes. This stage creates the fixed points that keep AI-assisted development on track.

## How constraints create predictability

AI models generate outputs based on patterns and context. By documenting specific constraints - data models, APIs,
workflows - you create guardrails that channel AI into useful, consistent results.

Think of this as **context engineering**: the more precise your constraints, the more predictable your AI-assisted
development becomes.

## Start with your data model

Data models form the foundation of your application. They define the core entities your system works with, and how
components will fit together.
Changes to data models ripple through your entire system

Use [prompt-data-model-generation](../../appendix/prompt-library/product/prompt-data-model-generation.md) with your
requirements document and architecture diagram as context.

Work iteratively with the AI until your data model accurately represents the domain you're building.

## Continue adding to the context

Create additional diagrams based on your needs. Focus on outputs that reviewers can easily verify.

Useful requirement types:

- Data models and
  schemas - [prompt-data-model-generation](../appendix/prompt-library/product/prompt-data-model-generation.md)
- API specifications - [prompt-api-requirements](../appendix/prompt-library/product/prompt-api-requirements.md)
- Sequence diagrams - [prompt-sequence-diagram](../appendix/prompt-library/product/prompt-sequence-diagram.md)
- Third-party tool documentation - Where relevant, decide on and document any third-party dependencies to include
- Directory structures - Ensure your LLM rules files include your preferred directory structure

## Consolidate everything into reusable documents

Once your individual artefacts accurately describe your solution, combine them into comprehensive documents that serve
as single sources of truth.

- Architectural Decision Record (ADR) -
  Use [prompt-architecture-decision-record](../../appendix/prompt-library/product/prompt-architecture-decision-record.md)
  and customise it for your needs.
- Product Requirements Document (PRD) -
  Use [prompt-product-requirements-document](../../appendix/prompt-library/product/prompt-product-requirements-document.md)
  as your starting point.

## Analyse your solution

Before moving forward, critically examine your requirements
using [prompt-product-analysis](../../appendix/prompt-library/product/prompt-product-analysis.md).

This analysis helps you to identify gaps in your documentation and may help to spot alternatives you might have missed.

## Working effectively with AI

Remember these principles when creating constraints:

**Iterate, don't perfect** - Have conversations with AI to refine each document rather than trying to get it right first
time.

**Accuracy over volume** - It's better to have fewer, completely accurate documents than to have many with minor errors.

**Build incrementally** - Use each completed document as context for the next, building a comprehensive picture.

## Next steps

With your ADR and PRD complete, you have the technical foundation for development. If your project includes user
interfaces, continue to [Design your interface](design-your-interface.md).

For projects without UI requirements, skip ahead to [Plan your delivery](plan-your-delivery.md).