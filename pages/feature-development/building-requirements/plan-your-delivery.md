# Plan your delivery

Transform your completed requirements into actionable development plans that maximise the effectiveness of AI-assisted
development.

## Prerequisites

Before planning delivery, ensure you have:

- **Product Requirements Document (PRD)** - Contains business logic and implementation preferences
- **Architectural Decision Record (ADR)** - Includes technical diagrams and documentation
- **Interface Requirements** - Describes user-facing functionality (if applicable)

## Create user stories

Break your feature into manageable user stories that AI tools can implement effectively.

AI tools are most effective when given well-defined tasks. Like user story sizing in Agile, finding the right level of
detail takes practice and judgement.

**Right-sized stories**

- Complete a meaningful piece of functionality
- Have clear acceptance criteria
- Include all context needed for implementation
- Easy to verify completion before moving to the next story

### Generate your stories

Use [prompt-user-story-creation](../../appendix/prompt-library/product/prompt-user-story-creation.md) with your PRD,
ADR, and interface requirements as context.

The AI will help you create stories that include:

- Clear user value statements
- Specific acceptance criteria
- Technical implementation notes
- Dependencies

Iterate on the user story prompt until you are satisfied with the results.

### Adapt to your team's process

Every team works differently. Adjust the story format to match your existing process.

If you already have user stories from product owners, use this stage to break them into specific implementation tasks
for AI tools.

## Storing your requirements

Save all documents as markdown files with supporting images in your code repository. This allows AI coding assistants to
reference them during development.

See [Project Setup](../getting-started/project-setup.md) for repository organisation guidance.

## Key guidelines

These principles ensure successful AI-assisted development:

**Invest time upfront** - Thorough requirements reduce misinterpretations and rework. Teams typically spend 30% or more
of project time on requirements. This investment pays off in development speed and quality.

**Review collaboratively** - Have your team review each section before development. Multiple perspectives catch issues
early and ensure shared understanding.

**Fix all errors** - Requirements must be clear, unambiguous, and error-free. Documentation bugs at this stage become
code bugs later - and they're much harder to fix once implemented.

**Use GDS standards** - AI models understand GDS patterns. Reference them in your requirements to get appropriate,
compliant implementations.

## Success criteria

You're ready for development when:

- All requirements documents are complete and reviewed
- User stories have clear acceptance criteria
- Technical constraints are fully documented
- Interface designs follow GDS standards
- Documentation is stored and accessible
- Your team understands the implementation approach

## [Next -> Development](../development.md)
