# Product Requirements

Creating effective product requirements forms the foundation for predictable AI-assisted development. This section shows
you how to build clear constraints that guide AI tools to produce consistent, accurate results.

You'll typically spend 30% or more of your workflow on requirements. The more time you invest in this step, the more you
improve efficiency and quality of the AI-powered development process.

## Prerequisites

1. **Prioritised feature requirements**: Work with stakeholders to identify and agree on key features that align with
   project goals
2. **Advanced reasoning model:** Use the most capable LLM available (like thinking models) for heavy analysis and
   product work
3. **Clear project scope:** Make sure each feature is well-defined to avoid ambiguities

# Building your requirements

### Step 1: High-level requirements

Create a comprehensive Markdown document covering everything about your feature. For example:

- Feature overview and purpose
- Frontend and backend needs
- Data model guidance
- Endpoint behaviours
- Performance expectations and constraints

Write everything you can think of, you'll refine the details into actionable requirements later.

See [example-product-requirements-input](../appendix/prompt-library/product/example-product-requirements-input.md) for a
template.

### Step 2: High-level architecture

Work with AI to create a simplified high-level architecture diagram. The level of detail will depend on your project.
For a greenfield project, it might look like this [High-Level Architecture](attachments/high-level-architecture.png)

Continue refining with AI until you're satisfied, but check **every detail is accurate**. Any documentation errors at
this stage will create problems later.

The above diagram was created
using [prompt-high-level-architecture](../appendix/prompt-library/product/prompt-high-level-architecture.md) followed by
some interactive back and forth with the chatbot to get the correct level of detail.

# Define clear constraints

Define constraints that reviewers can easily check before any code gets written. These constraints anchor AI outputs to
your actual needs.

When defining constraints, don't aim to "1-shot". For each artefact you produce, it's okay to have a long-running
conversation with a chatbot until you get the results you're happy with.

Adapt the following workflow to fit your team's needs.

### Step 3: Define your data model

Work through all fixed elements systematically. Start with your data model
using [prompt-data-model-generation](../appendix/prompt-library/product/prompt-data-model-generation.md).

Attach your feature description and high-level architecture as context.

### Step 4: Generate remaining constraints

Create additional diagrams based on your needs. Focus on outputs that reviewers can easily verify.

Useful requirement types:

- Data models and
  schemas - [prompt-data-model-generation](../appendix/prompt-library/product/prompt-data-model-generation.md)
- API specifications - [prompt-api-requirements](../appendix/prompt-library/product/prompt-api-requirements.md)
- Sequence diagrams - [prompt-sequence-diagram](../appendix/prompt-library/product/prompt-sequence-diagram.md)
- Third-party tool documentation - Where relevant, decide on and document any third-party dependencies to include
- Directory structures - Ensure your LLM rules files include your preferred directory structure

### Step 5: Consolidate your artefacts

Once your artefacts accurately describe your solution, consolidate them into reusable documentation.

Create an Architectural Decision Record (ADR) and/or Product Requirements Document (PRD). Focus on making reviewable,
maintainable outputs you can share with future prompts.

Edit the following prompts to tailor them to the needs of your requirements

- Architectural decision
  record [prompt-architecture-decision-record](../appendix/prompt-library/product/prompt-architecture-decision-record.md)
- Product requirements
  document [prompt-product-requirements-document](../appendix/prompt-library/product/prompt-product-requirements-document.md)

### Step 6: Analyse your solution

Use [prompt-product-analysis](../appendix/prompt-library/product/prompt-product-analysis.md) to examine your
requirements and data model thoroughly.

This analysis helps identify gaps, assess costs and benefits, and spot alternatives you might have missed.

# Interface design

With your PRD and ADR complete, you can start on interfaces and user stories.

### Step 7: Create interface mock-ups

Develop interface mockups using tools like Figma, Miro, or Mural. Take screenshots of each page and annotate clearly
expected behaviours - annotations must be visible to help the LLM understand interface requirements.

### Step 8: Create interface requirements

Upload mockup screenshots and
use [prompt-user-interface-requirements](../appendix/prompt-library/product/prompt-user-interface-requirements.md) to
generate frontend requirements following GDS standards.

# Wrapping Up

### Step 9: Generate user stories

Combine your ADR, PRD and interface requirements to produce user
stories. [prompt-user-story-creation](../appendix/prompt-library/product/prompt-user-story-creation.md).

## Storing your requirements

Save all documents as markdown files with supporting images in your code repository. This allows AI coding assistants to
reference them during development.

See [Project Setup](../getting-started/project-setup.md) for repository organisation guidance.

# Key guidelines

**Invest time upfront** - Thorough requirements reduce misinterpretations and increase predictability.

**Review collaboratively** - Have your team review each section. Check each output before using it as input for the next
step. Accurate documentation prevents cascading errors.

**Fix all errors** - Requirements must be clear, unambiguous, and error-free. Any bugs in your documentation at this
stage **will** cause you problems later.

**Use GDS standards** - AI models understand GDS standards. Specify compliance in your requirements for appropriate
design suggestions.

## Next steps

Ready to start development? Continue to [Development](development.md)