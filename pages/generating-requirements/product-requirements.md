# Product requirements

Capture what you need to build and how users will interact with it. Pick the techniques that work for your team and project.

## Write detailed feature description

Create a detailed markdown document describing the feature you want to implement. This may include:

- Overview and purpose of the feature
- Frontend and backend requirements
- Data model guidance
- Endpoint behaviours
- Performance expectations and constraints
- Be verbose and clear about what you want - later processes will refine the detail into actionable requirements.

This is an example prompt example-product-requirements-input

## Design interfaces (if needed)

For user-facing features, create mockups in Figma, Miro or similar tools. Add clear annotations explaining expected behaviours.

Transform mockups into detailed requirements using [prompt-user-interface-requirements](../appendix/prompt-library/product/prompt-user-interface-requirements.md) to ensure GDS compliance.

## Plan your delivery

Break features into manageable pieces that AI tools can implement effectively.

### Product Requirements Document

Consider formalising your feature into a Product Requirements Document using [prompt-product-requirements-document](../appendix/prompt-library/product/prompt-product-requirements-document.md)
or generating user stories at the same time with [prompt-combined-requirements-features-stories](../appendix/prompt-library/product/prompt-combined-requirements-features-stories.md) 

### Create user stories

Right-sized stories should:

- Complete meaningful functionality
- Have clear acceptance criteria
- Include implementation context
- Be easy to verify

To create multiple user stories from a PRD try [prompt-user-stories-creation](../../appendix/prompt-library/product/prompt-user-stories-creation.md)
or to create an individual user story try [prompt-user-story-creation](../../appendix/prompt-library/product/prompt-user-story-creation.md).

## [Next: Technical requirements](technical-requirements.md)