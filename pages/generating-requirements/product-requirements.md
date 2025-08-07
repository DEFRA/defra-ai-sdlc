# Product Requirements

This section shows how to use AI to create functional artefacts for your project. Product requirements are necessary for AI Coding Assistants (AICA) to deliver high quality code.

These are flexible guidelines rather than a specific workflow - adapt the techniques based on your situation and requirements.

## Start With Your Feature Description

You will get the best outcomes from AI by first clearly articulating the requirement in your own words. 

Create a comprehensive markdown document describing the feature you want to implement. Include these elements where relevant:

- **Purpose and scope** - What problem does this solve and for whom?
- **User interactions** - How will people use this feature?
- **Frontend requirements** - Interface elements, user flows and visual design needs
- **Backend requirements** - Processing logic, data handling and system behaviour
- **Data considerations** - What information you'll store, process or display
- **Integration points** - How this connects with existing systems
- **Performance expectations** - Speed, capacity and reliability requirements
- **Security requirements** - Authentication, authorisation and data protection needs
- **Business rules** - Constraints, validations and compliance requirements

Write with detail and clarity about what you want - this information forms the foundation for AI-generated artefacts.

### Example Feature Description

```markdown
I'm building a governance checklist app for Defra project tracking. Here are the core features:

**Purpose**: Help projects track their governance process through a unified checklist system that ensures compliance and reduces oversight burden.

**Workflow structure**: 
- Multiple governance workflows compose the main checklist
- Sub-flows branch based on business area (e.g. different requirements for policy vs. technology delivery)
- Workflows can be templated and reused across similar projects

**Checklist item types**:
- Standard items: Basic checkbox functionality with optional notes
- Approval items: Require document upload plus approver details (person, date/time)
- Document items: Must attach latest version before completion, with version tracking
- Event items: Time-based milestones or meetings with calendar integration

**Item states**: incomplete, complete, not required, blocked

**Business rules**:
- Some items cannot be completed until dependencies are finished
- Approval items require specific roles/permissions
- Document items must pass basic validation (file type, size limits)
- Audit trail required for all state changes

**Integration requirements**:
- Single sign-on with existing Defra identity systems
- Document storage integration with SharePoint
- Notification system for approvals and deadlines  
```

## Create Visual Mockups

For user-facing features, develop mockups using Figma, Miro or similar tools. Add clear annotations explaining expected behaviours, user flows and interaction patterns.

**Why this matters**: Visual references help AI tools understand your interface requirements and generate more accurate implementations. Include:

- Key user journeys and decision points
- Error states and edge cases
- Responsive behaviour for different screen sizes
- Accessibility considerations

## Generate User Stories Using AI

When your situation requires user stories, use [prompt-user-story-creation](../appendix/prompt-library/product/prompt-user-story-creation.md) in an AI Assistant to create a detailed story with acceptance criteria. Refine through iterative conversation.

## Generate PRD Using AI

When your situation requires formal documentation, for example a new epic, use AI Assistants to generate Product Requirements Documents (PRDs) containing requirements, features and user stories together using [prompt-combined-requirements-features-stories](../appendix/prompt-library/product/prompt-combined-requirements-features-stories.md). Refine through iterative conversation.

## [Next: Technical requirements](technical-requirements.md)
