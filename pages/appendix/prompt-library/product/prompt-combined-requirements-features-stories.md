# Combined Features and Stories Generation

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

{% include page-navigation.html 
   prev_url="prompt-user-interface-requirements" 
   prev_title="User Interface Requirements"
   next_url="prompt-product-analysis" 
   next_title="Deep Product Analysis" %}