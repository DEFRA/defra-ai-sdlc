# Product requirements

Capture what you need to build and how users will interact with it. Pick the techniques that work for your team and project.

## Capture your feature knowledge

Start by writing down everything you know about the feature. Focus on completeness over polish.

Include what's relevant:

- Feature purpose and overview
- Frontend and backend needs
- Business rules and edge cases
- Your preferred approach
- Security considerations

See [example-product-requirements-input](../appendix/prompt-library/product/example-product-requirements-input.md) for a template.

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

### Adapt to your process

Every team works differently. Adjust story formats to match your existing workflow, or break your team's existing stories into more granular implementation tasks.

## Working effectively

You have solid product requirements when:

- Feature knowledge is documented
- Architecture is visualised
- Interface needs are clear (if applicable)
- Stories have acceptance criteria
- Your team understands the approach

**Review with your team.** - Multiple perspectives spot issues and ensure shared understanding.

## [Next: Technical requirements](technical-requirements.md)