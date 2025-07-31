# Product Requirements

This section provides a structured approach to creating and refining product requirements for an AI-powered development workflow. Detailed requirements are critical for successful feature development with large language models (LLMs).

You may spend more than 30% of workflow time on requirement generation and refinement. The more time you invest in this step, the more you improve efficiency and quality of the AI-powered development process.

## How to create product requirements

### Prerequisites

1. **Prioritised feature requirements**: Work with stakeholders to identify and agree on key features that align with project goals
2. **Advanced reasoning model**: Use the most capable LLM available (like thinking models) for heavy analysis and product work
3. **Clear project scope**: Make sure each feature is well-defined to avoid ambiguities


### 1 UCD validation of AI-generated requirements

When AI generates requirements from user research and design work, UCD professional validation is essential to ensure user needs remain accurately represented.

#### Validation Process

**Before AI generation**
- Ensure your user research findings and design documentation are comprehensive and clear
- Document key user needs, pain points, and success criteria that must be preserved
- Identify any nuanced user requirements that need careful handling

**AI requirements generation**
- Use AI to generate user stories, acceptance criteria, and functional requirements
- Prompt AI to prioritise requirements based on user impact and research evidence
- Generate multiple requirement sets to compare approaches

**UCD professional review** *(Critical Step)*
- **Validate against user research**: Do requirements accurately reflect user needs identified in research?
- **Check for bias or exclusion**: Has AI missed or misrepresented any user groups?
- **Assess user journey integrity**: Do requirements support complete user journeys?
- **Review accessibility requirements**: Are inclusive design needs properly specified?

#### Quality criteria for UCD review

Requirements pass UCD validation when they:
- Directly trace back to user research findings
- Support complete user journeys identified in design work  
- Include appropriate accessibility and inclusion requirements
- Maintain the user value propositions from validated design concepts
- Specify measurable user outcomes, not just system functions

#### Common AI requirements issues to check

**User need drift**: AI may generalise user needs in ways that lose important specificity
**Technical bias**: AI may emphasise technical feasibility over user experience quality
**Missing edge cases**: AI may not include requirements for users with access needs
**Success metric gaps**: AI may focus on functional requirements but miss user satisfaction measures


### 2. Write detailed feature description

Create a detailed markdown document describing the feature you want to implement. This may include:
- Overview and purpose of the feature
- Frontend and backend requirements
- Data model guidance
- Endpoint behaviours
- Performance expectations and constraints

Be verbose and clear about what you want - later processes will refine the detail into actionable requirements.

This is an example prompt [example-product-requirements-input](../appendix/prompt-library/product/example-product-requirements-input.md)

### 3. Define the data model

Use [prompt-data-model-generation](../appendix/prompt-library/product/prompt-data-model-generation.md) to create a detailed data model based on your requirements.

Review the data model thoroughly with your team - if the data model is wrong, your app will be wrong.

### 4. Analyse the solution

Use [prompt-product-analysis](../appendix/prompt-library/product/prompt-product-analysis.md) to conduct deep analysis of your requirements and data model.

This meta-analysis helps find gaps, analyse costs and benefits, and identify alternatives to reduce confirmation bias.

### 5. Generate API endpoints

Use [prompt-api-requirements](../appendix/prompt-library/product/prompt-api-requirements.md) to create API endpoint requirements based on your refined data model.

### 6. Create detailed designs

Create detailed designs using tools like Figma, or the Gov.uk prototyping toolkit. The designs can be exported image files of Figma pages, hand drawn sketches, or design specifications describing each element on the page. If you have any annotations, they must be visible to help the LLM understand the interface requirements.

### 7. Create interface requirements

Upload mockup screenshots and use [prompt-user-interface-requirements](../appendix/prompt-library/product/prompt-user-interface-requirements.md) to generate frontend requirements following GDS standards.

### 7. Generate user stories

Use [prompt-combined-requirements-features-stories](../appendix/prompt-library/product/prompt-combined-requirements-features-stories.md) to create the final detailed product requirements document that breaks down functionality by feature with user stories.

Alternatively, use [prompt-user-story-creation](../appendix/prompt-library/product/prompt-user-story-creation.md) to create individual user stories

### 8. Save requirements in repository

Save the requirements in markdown files, with supporting image files, inside your code repository so the AI Coding Assistant can reference it during development. For more information, see the [Project Setup](../getting-started/project-setup.md).

## Guidelines

**Invest time upfront**: Spend substantial effort refining requirements to remove vagueness and potential misinterpretations.

**Review collaboratively**: Make sure all aspects are reviewed by the team and revise unclear sections. Review each output one-by-one before using it as input into the next step.

**Focus on precision**: Requirements must be unambiguous and correctly interpretable by LLMs.

**Leverage GDS knowledge**: LLMs are trained on GDS standards and will suggest compliant designs when requirements specify adherence to GDS standards. The design outputs should always be checked by a UCD expert to ensure that they meet user needs, and follow UCD and accessibility standards.

## [Next -> Development](development.md)