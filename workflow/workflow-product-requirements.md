# Product Requirements

This section provides a structured approach to creating and refining product requirements for an AI-powered development workflow. Detailed and precise requirements are critical to ensuring successful feature development, especially in workflows that rely heavily on large language models (LLMs).

You may spend more than 30% of workflow time on requirement generation and refinement. The more time you invest in this step, the more you can improve the efficiency and quality of the AI-powered development process and save time addressing issues later.

## 1. Understanding Prioritised Feature Requirements

Before embarking on detailed requirement creation, it is essential to clearly understand and prioritise the feature requirements for the service you are developing.

- Collaborate with stakeholders to identify and agree on the key features that align with the overall goals of the project.
- Document these features in order of priority, ensuring alignment with business objectives and technical feasibility.
- Ensure each feature is well-defined and scoped to avoid ambiguities.

## 2. Writing a Detailed Feature Description of the Requirements

A detailed feature description should be a *very* detailed account of the feature you want to implement, with as much detail as possible. It's better to err on the side of being very verbose and clear about what you want; the later processes will refine the detail into actionable requirements.

Ideally, this description should take the form of a markdown document, and could look something like this:

```
I'm writing a governance checklist app for Defra governance project tracking. Here are the features of the app:

- This tool allows projects to track their governance process through a unified checklist, composed of multiple governance workflows, each with their own checklist items.
- There can be multiple governance workflows of checklist items, such as a main governance flow, then sub-flows depending on what part of the business you're delivering for.
- The checklist items are general, but should be able to support these types - labels are examples: 'approval' (where the checklist item requires somebody to upload a document as evidence of the approval and state the person, date/time of the approval when checking off), 'document' (where the user must upload the latest version of the document before checking off). I guess 'approval' items also have 'document' item aspects to it, so it's likely they are just two additional types of a normal checklist item (without any states), 'event' could be another type.
- A checklist item should have states (example labels): 'incomplete', 'complete', 'not required'. 
  
...and so on...
```

Consider adding the following to your detailed description. However, don't be limited to these areas - the more detail the better:

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

## 3. Define the Data Model

Once you have a detailed description of the business and technical requirements, use an LLM to create a detailed data model. If the data model is not correct and does not follow the logic of your business requirements at this early stage, then it's unlikely the end result of the development process will function as expected. A data model also gives the LLMs guidance later in the process on how to structure code and models to conform to the data being stored, processed and retrieved.

Use the following prompt to define the data model, use an advanced reasoning model, such as a 'thinking' model for all heavy analysis product work:

```
I'd like to create a data model based on the following project business and technical requirements. 

ANALYSIS PHASE:

Read, analyse and understand the following product and technical requirements:

[PASTE THE REQUIREMENTS DESCRIPTION HERE]

Ask any follow up questions that will clear up any ambiguities if needed.

IMPLEMENTATION PHASE:

Think about the above requirements and work out a simplified data model suitable for use with [MongoDB]. Also produce a Mermaid diagram so it is understandable in a relational format. Feel free to change labels or column names to be more clear if needed if they are more logical. The data model should be in a single, downloadable file using markdown formatting.

VERIFICATION AND COMPLETION PHASE:

- Make sure the final model covers all the requirements before returning a solution.
- Highlight any areas where you have made assumptions.
```

Once it produces a data model, review the data model thoroughly with your team to ensure it covers the overall intent and any edge cases are picked up. Again, if the data model is wrong, then your app will be wrong.

## 4. Handling Broken Markdown Files

If the generated markdown file is 'broken':

1. Click the 'copy' icon at the bottom of the ChatGPT chat (this ensures cleaner copying than manual selection and copying).
    
2. Run the copied markdown text through Claude or a similar tool with the following prompt:
    
    ```
    Please convert this to a single file md format.  Do not change any of the content:
    
    [PASTE BROKEN MARKDOWN HERE]
    ```

## 5. Deep Product Analysis of the Solution

Using your original product requirements and the data model, the solution can be analysed using LLMs as a pair evaluator to help find gaps in the solution, analyse cost/benefits, pros/cons and conduct future-perspective evaluation.

Run the following prompt for meta analysis, use an advanced reasoning model:

```
Do some meta analysis to analyse the following product requirements, including what it does, and how effective it could be. Come up with a pros and cons list, thinking about how it will be used over the lifetime of the product. Come up with a list of recommendations to improve it, or alternatives to consider for a tool we could build.

ANALYSIS PHASE:

Read, analyse and understand the following product and technical requirements:

PRODUCT REQUIREMENTS:
[PASTE HERE]

DATA MODEL:
[PASTE HERE]

IMPLEMENTATION PHASE:

Do deep analysis of the proposed solution and write a report detailing the following:
# Overview and Purpose
# What the App Does and Its Effectiveness
# Potential Effectiveness Over the App's Lifetime
# Pros and Cons
# Recommendations for Improvement
[Including any gaps in the requirements]
# Alternatives to Consider
# Futurespective
[What are some potential issues users might face using this product a few years from now?]
# Benefits
[What could be the overall benefits to an organisation who adopts this product?]
# Costs
[What are some of the possible costs of adoption]

The report should be in a single, downloadable file using markdown formatting.

VERIFICATION AND COMPLETION PHASE:

- Make sure the analysis is thorough and covers all the sections listed above.
- Highlight any areas where you have made assumptions.
- Suggest improvements where possible.
```

Once you have this report, you can save it alongside your other product documentation. You can also continue to chat with the LLM if this report is created in a chat interface to drill down on more detail. The goal of this step is to consider alternatives so your own confirmation biases are less likely to affect the final product.

Review this output with your team to see if the input requirements need to be updated, then re-run the process if required.

## 6. Generate API Endpoints Requirements

If using an API for your backend, generate API endpoint requirements based on your refined data model:

Run the following prompt, use an advanced reasoning model:

```
Given the attached data model, please create requirements for API endpoints that follow this example. Please also include examples of the objects that will be sent in to each endpoint for reference. Make sure you use the plural version of the naming:

EXAMPLE:
## API Endpoints

All endpoints follow RESTful conventions. Below is a complete list of endpoints modelled after the sample `/api/v1/governance-templates` endpoint, now including PUT requests for updating resources by ID. The Audit Log endpoints allow creation (POST) and retrieval (GET) but do not permit updating or deleting entries.

### Governance Template Endpoints

#### **Endpoint:** `/api/v1/governance-templates`
- **POST request:**  
  Creates a new governance template object with all the fields passed in the body; returns the newly created object from the database.
- **GET request:**  
  Returns a list of all the governance template objects stored in the database.

#### **Endpoint:** `/api/v1/governance-templates/{id}`
- **GET request:**  
  Returns the governance template object for the given id.
- **PUT request:**  
  Updates the governance template object for the given id with the fields provided in the request body; returns the updated object.
- **DELETE request:**  
  Deletes the governance template object for the given id and returns a success message with status code 200.


DATA MODEL:
[PASTE DATA MODEL HERE]
```

Review the API endpoints with the team. Refine and re-prompt if required. Save the API endpoint requirements for later reference.

## 7. Create Interface Mock-ups

Develop interface mock-ups of the screens related to your requirements. This can be done in an advanced tool like Figma, or in an online whiteboard tool such as Miro or Mural. Take screenshots of each mock-up page. Ensure all the elements are clear and readable in the image.

**IMPORTANT:** Make sure you thoroughly annotate the mock-ups with the expected behaviour of each element and the annotations are visible in the screenshots. This will help the LLM better understand the interface requirements in the next step.

## 8. Create Interface Requirements

First upload all mockup screenshots from the previous step using the "wait for more uploads" method with the o1 model. Since there is a limit of 5 uploads at a time in the ChatGPT interface, upload 5 images, with the prompt "wait for more uploads", then repeat this process until all the images are uploaded. Once all are uploaded, run the following prompt to create the frontend interface requirements:

```
I have the following data model and backend API endpoints. Write the frontend requirements based on the mock-ups I've uploaded. Follow GDS standards and give detail about where the pages should sit (route) and any GDS component design elements:

DATA MODEL:
[PASTE DATA MODEL REQUIREMENTS]

API ENDPOINTS:
[PASTE API ENDPOINTS REQUIREMENTS]
```

Review the frontend requirements with the team. Refine and re-prompt if required. Save the frontend requirements for later reference.

## 9. Combined Product Requirements

This is the final phase where we generate the combined product requirements. Use the most advanced reasoning model possible to create a detailed requirements document for the coding tools to implement.

Use the following prompt to create the combined requirements:

```
ANALYSIS PHASE:

Read each of the following documents, analyse them.

DATA MODEL:
[PASTE HERE]

API ENDPOINTS:
[PASTE HERE]

FRONTEND INTERFACE REQUIREMENTS:
[PASTE HERE]

Confirm you have read the content of the documents, then continue...

IMPLEMENTATION PHASE:

Create a detailed product requirements document that breaks down the functionality by feature.  The end result should be a list of features, with both frontend and backend user stories detailed for the given feature. You will have to interweave the relevant API endpoints with the frontend features to create a fully realized feature.  The stories should be discrete and detailed.  There may be multiple stories per feature.  The end result should be a hybrid of very good user stories, with the details found in a PRD.  Please number the features and the stories so they can be easily referred to later.

Each story format should be in the following format:
- Story title
- Designate each story as a frontend or backend API story (it should be one or the other, not both)
- Story written in As a, I want, so that story format
- Design / UX consideration (if applicable)
- Testable acceptance criteria in Given, When, Then BDD format
- Detailed Architecture Design Notes
- Include any other detail or relevant notes that would help an AI-powered coding tool understand and correctly implement the features.
- Include any information about stories that are dependencies, such as backend stories that are needed to complete a frontend story, for example.
- Include any information about related stories for context.

You should also give any overarching context in the feature description.

At the top of the document include the detail of the data model for reference.

Do NOT include any summary, timelines, or non-functional requirements, unless they are relevant to the specific feature implementations.
Do NOT add any functionality that isn't in the above requirements, only add the functionality already defined.

Include a short 'Context' part at the top of the document that details the purpose and background information that is relevant to the project overall.

VERIFICATION AND COMPLETION PHASE:
Validate your work to check that all the features defined in the documents above meet all the necessary requirements and there is no ambiguity or overlap before writing the final output.
```

## 10. Saving the Combined Requirements in the Repository

Once you have the markdown text, save it in the folder or Obsidian vault that was set up at the start of the project in `[filename].md` format. It's important that this file is INSIDE the code repository, as we will have the AI-powered IDE reference it later in the workflow.

## 11. Ensuring Requirement Precision

Dedicate substantial time and team effort to refining the prompts and the Product Requirements document to eliminate vagueness and potential misinterpretations.

- Ensure all aspects are reviewed collaboratively by the team.
- Revise any unclear sections to ensure the requirements are unambiguous and can be correctly interpreted by an LLM.

## A Note About Design and UX

The LLMs have been trained on GDS standards and have ingested GDS style layouts. Therefore, they are often good at determining GDS-compliant designs while they implement features. As long as your product requirements document and .cursor rules files stipulate adherence to the GDS standards for designs, the LLMs should adhere to them when developing features. The LLMs will also note places in your design where GDS standards are not met and suggest compliant alternatives.