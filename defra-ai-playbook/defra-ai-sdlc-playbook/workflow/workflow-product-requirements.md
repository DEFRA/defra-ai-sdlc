# Product Requirements

This section provides a structured approach to creating and refining product requirements for an AI-powered development workflow. Detailed and precise requirements are critical to ensuring successful feature development, especially in workflows that rely heavily on large language models (LLMs).

It's possible, if not likely, you will spend up to 30% of workflow time on requirement generation and refinement.  The more time you spend on this step can significantly improve the efficiency and quality of the AI-powered development process and save time addressing issues later.

## 1. Understanding Prioritised Feature Requirements

Before embarking on detailed requirement creation, it is essential to clearly understand and prioritise the feature requirements for the service you are developing.

- Collaborate with stakeholders to identify and agree on the key features that align with the overall goals of the project.
- Document these features in order of priority, ensuring alignment with business objectives and technical feasibility.
- Ensure each feature is well-defined and scoped to avoid ambiguities.

## 2. Writing a Detailed Feature Prompt

For the feature you wish to develop, craft a comprehensive and detailed prompt. This prompt will serve as the foundation for the subsequent generation of the Product Requirements Document (PRD). Your prompt should include the following:

### 2.1. Overview of the Feature

- A concise description of the feature, outlining its purpose and intended impact.
- How the feature integrates into the existing system or service.

### 2.2. Frontend Requirements

- Specify any changes required for the user interface (UI), including:
    - New components or modifications to existing ones.
    - Specific design guidance, such as layout, colours, typography, and accessibility requirements.
    - Expected user interactions and behaviours.

### 2.3. Backend Requirements

- Outline any backend changes necessary to support the feature, including:
    - Details of new or modified APIs/endpoints.
    - Data processing and logic requirements.
    - Security considerations, such as authentication and authorisation.

### 2.4. Data Model Guidance

- Describe any changes or additions to the data model.
- Provide detailed information about new entities, their attributes, and relationships.

### 2.5. Endpoint Behaviours

- Specify the expected behaviours of APIs/endpoints, including input/output formats, validation rules, error handling, and response times.

### 2.6. Additional Considerations

- Include any other relevant details, such as:
    - Performance expectations.
    - Integration with third-party systems.
    - Edge cases and constraints.

## 3. Generating the Product Requirements Document (PRD)

Once the team is satisfied with the feature prompt, use an advanced LLM, such as ChatGPT (model ‘o1’), to generate a detailed PRD.

### 3.1. Prompt for PRD Generation

Use the following structure to prompt the LLM:

```
Please create a detailed PRD document from the requirements below. Create a single, downloadable document in markdown format. Think step by step and ensure you have covered all the requirements outlined below.

[PASTE THE PROMPT FROM THE EARLIER STEP]
```

### 3.2. Handling Broken Markdown Files

If the generated markdown file is broken:

1. Click the ‘copy’ icon at the bottom of the chat (this ensures cleaner copying than manual selection).
    
2. Run the copied markdown text through Claude or a similar tool with the following prompt:
    
    ```
    Please convert this to md format: [PASTE BROKEN MARKDOWN HERE]
    ```
    

## 4. Structuring the PRD

The PRD format is advantageous for LLM-driven workflows as it breaks down feature requirements into numbered sections and subsections. This ensures that individual features can be easily interpreted and developed.

- Include sections for feature overview, design specifications, API details, data model updates, and acceptance criteria.
- If needed, integrate specific team requirements, such as user stories or Behaviour-Driven Development (BDD) test cases. However, for a fully AI-driven workflow, this step may be unnecessary.

## 5. Ensuring Requirement Precision

Dedicate substantial time and team effort to refining the prompt and the PRD to eliminate vagueness and potential misinterpretations.

- Ensure all aspects are reviewed collaboratively.
- Revise any unclear sections to ensure the requirements are unambiguous and can be correctly interpreted by an LLM.