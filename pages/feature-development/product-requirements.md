# Product Requirements

This section provides a structured approach to creating and refining product requirements for an AI-powered development workflow. Detailed requirements are critical for successful feature development with large language models (LLMs).

You may spend more than 30% of workflow time on requirement generation and refinement. The more time you invest in this step, the more you improve efficiency and quality of the AI-powered development process.

## Workflow

### Prerequisites

1. **Prioritised feature requirements**: Work with stakeholders to identify and agree on key features that align with project goals
2. **Advanced reasoning model**: Use the most capable LLM available (like thinking models) for heavy analysis and product work
3. **Clear project scope**: Ensure each feature is well-defined to avoid ambiguities

### 1. Write detailed feature description

Create a detailed markdown document describing the feature you want to implement. This may include:
- Overview and purpose of the feature
- Frontend and backend requirements
- Data model guidance
- Endpoint behaviours
- Performance expectations and constraints

Be verbose and clear about what you want - later processes will refine the detail into actionable requirements.

### 2. Define the data model

Use [prompt-data-model-generation](../appendix/prompt-library/product/prompt-data-model-generation.md) to create a detailed data model based on your requirements.

Review the data model thoroughly with your team - if the data model is wrong, your app will be wrong.

### 3. Analyse the solution

Use [prompt-product-analysis](../appendix/prompt-library/product/prompt-product-analysis.md) to conduct deep analysis of your requirements and data model.

This meta-analysis helps find gaps, analyse costs/benefits, and identify alternatives to reduce confirmation bias.

### 4. Generate API endpoints

Use [prompt-api-requirements](../appendix/prompt-library/product/prompt-api-requirements.md) to create API endpoint requirements based on your refined data model.

### 5. Create interface mock-ups

Develop interface mock-ups using tools like Figma, Miro, or Mural. Take screenshots of each page and thoroughly annotate expected behaviours - annotations must be visible to help the LLM understand interface requirements.

### 6. Create interface requirements

Upload mockup screenshots and use [prompt-user-interface-requirements](../appendix/prompt-library/product/prompt-user-interface-requirements.md) to generate frontend requirements following GDS standards.

### 7. Generate combined requirements

Use [prompt-combined-requirements-features-stories](../appendix/prompt-library/product/prompt-combined-requirements-features-stories.md) to create the final detailed requirements document that breaks down functionality by feature with user stories.

### 8. Save requirements in repository

Save the requirements in markdown files, with supporting image files, inside your code repository so the AI Coding Assistant can reference it during development.  For more information, see the [Project Setup](../getting-started/project-setup.md).

## Guidelines

**Invest time upfront**: Spend substantial effort refining requirements to remove vagueness and potential misinterpretations.

**Review collaboratively**: Ensure all aspects are reviewed by the team and revise unclear sections.  Review each output one-by-one before using it as input into the next step.

**Focus on precision**: Requirements must be unambiguous and correctly interpretable by LLMs.

**Leverage GDS knowledge**: LLMs are trained on GDS standards and will suggest compliant designs when requirements specify adherence to GDS standards.

## [Next -> Development](development.md)