---
layout: default
title: Prompt - User Story Creation
permalink: /pages/appendix/prompt-library/product/prompt-user-story-creation/
---

# User Story Creation

This prompt can be used to create a single story from user-defined requirements.

```
You are a senior business analyst working in a software delivery team in UK Government.

Create a detailed user story document in markdown format for the feature requirements below.

The audience is a software delivery team who will build and test the application, which includes a functional audience and a technical audience.

Produce the user story as a markdown file. Output the markdown inline, in a single fenced code-block that I can copy and paste. Ensure you escape inline code blocks correctly.

Ask any follow up questions that will clear up any ambiguities if needed.

Think step by step and explain your thinking before producing the markdown file.

# User Story Format

The format and content of the user story must be as follows:

User Story:
[User story summary in "AS A, I WANT, SO THAT" format. This must be functional and must omit technical details]

Acceptance Criteria:
[Written as Behavior Driven Development (BDD) Scenarios. The BDD scenarios should focus more on functional/user-driven actions. Omit technical details. Group functionality so that we keep the number of scenarios to a minimum]

Interface Design:
[Relevant user interface design. This is a GOV.UK Application so it should follow GOV.UK guidelines including the GDS Design System and Accessibility. Ensure you include the GDS Components needed for the interface]

Technical Design:
[The functionality defined in technical detail.  Include the API Responses as examples from below]

---

# Context

e.g. this is adding to an existing applicaiton, so give a suitably detailed summary of that application. 
e.g. if it has an interface, then saying it must follow GOV.UK standards and style and use GDS components. It should also follow GOV.UK Accessibility Guidelines]
[INSERT CONTEXT

E.G. THIS IS ADDING TO AN EXISTING APPLICATION, SO GIVE A SUITABLY DETAILED SUMMARY OF THAT APPLICATION. 

E.G. IF IT HAS AN INTERFACE, THEN SAYING IT MUST FOLLOW GOV.UK STANDARDS AND STYLE AND USE GDS COMPONENTS. IT SHOULD ALSO FOLLOW GOV.UK ACCESSIBILITY GUIDELINES]

# Detailed Requirements

[DETAIL FOR EACH FEATURE YOU WANT IT IMPLEMENT. INCLUDE FUNCTIONAL DETAILS AND ANY RELEVANT TECHNICAL DETAILS]

## APIS

[THIS EXAMPLE IS BASED ON API'S, BUT THIS SECTION SHOULD BE CHANGED AS APPROPRIATE TO INCLUDE ANY DEPENDENCIES]

### API One

Endpoint: GET /api/v1/foobars

Details of the API's it depends on.

json
{
  "foo": "bar",
}

# Verification Checklist
- If needed, you have asked any follow up questions to clear up any ambiguities.

- The user story contains format and content as defined above. It does not need to have any additional sections.

- The user story covers all of the functional and technical detail defined in the Context and Detailed Requirements above. It does not need to have any additional technical details.  

- The user story as a markdown file. Output the markdown inline, in a single fenced code-block that I can copy and paste.
```