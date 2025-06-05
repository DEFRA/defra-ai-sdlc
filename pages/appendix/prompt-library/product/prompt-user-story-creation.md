# User Story Creation

This prompt can be used to create a single story from user-defined requirements.

```

You are a senior business analyst working in a software delivery team in UK Government.

Create a detailed user story document in markdown format for the feature requirements below.

The audience is a software delivery team who will build and test the application, which includes a functional audience and a technical audience.

Produce the user story as a markdown file. Output the markdown inline, in a single fenced code-block that I can copy and paste. Ensure you escape inline code blocks correctly.

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

[insert context

e.g. this is adding to an existing applicaiton, so give a suitably detailed summary of that application. 

e.g. if it has an interface, then saying it must follow GOV.UK standards and style and use GDS components. It should also follow GOV.UK Accessibility Guidelines]

# Detailed Requirements

[Detail for each feature you want it implement. Include funcitonal details and any relevent technical details]

## APIS

[This example is based on API's, but this section should be changed as appropriate to include any dependencies]

### API One

Endpoint: GET /api/v1/foobars

Details of the API's it depends on.

json
{
  "foo": "bar",
}

# Verification Checklist
- The user story contains format and content as defined above. It does not need to have any additional sections.

- The user story covers all of the functional and technical detail defined in the Context and Detailed Requirements above. It does not need to have any additional technical details.  

- The user story as a markdown file. Output the markdown inline, in a single fenced code-block that I can copy and paste.
```