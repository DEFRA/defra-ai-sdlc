# Getting Started

To get started working with AI ways of working, it's helpful to have a conceptual understanding of how to use this playbook to generate quality, consistent code.

## Workflow overview

Below is a diagram that provides a high-level overview of the steps defined in this playbook. For the most part, this development workflow follows recognised best practices already established throughout government, with the additional aid of AI tools and techniques.

![](attachments/development-workflow-diagram.png)

*Image: Simplified development workflow diagram*

### Key stages of the workflow

- **Product / Service idea** - This represents the problems to be solved for your users using existing service design and user research techniques.
- **Prompt to generate requirements documents and designs** - Using advanced models, such as the latest "thinking" models, the clearly defined ideas can be used to generate requirements documentation (features, user stories, data models, etc.) that the AI IDEs (Integrated Development Environment - Cursor) can later use to generate code.
- **Create a new feature branch in git** - This workflow uses traditional git branching strategies for code versioning.
- **Take requirements and prompt to generate code** - The requirements generated in the previous step are then used to prompt the AI IDE tools to generate code.
- **Take requirements and prompt to generate tests** - Tests can be generated from the same product requirements in the AI IDE, ensuring the business logic defined in the requirements are tested independently from the code generation.
- **Prompt to refactor as necessary** - Additional refactoring of the code can also be prompted at this point.
- **Prompt to create / update documentation** - Documentation can be kept up to date by prompting the AI IDE to update documentation based on the changes that have been made.
- **Create MR for developer code review** - A Merge Request (MR) in git is then generated following traditional development practices. Each line of code is reviewed for quality and brevity, ensuring that the code to be deployed is production-ready.
- **Merge & Deploy** - Once the MR is merged into the main branch, the automated pipeline processes are used to deploy the code, as per your normal deployment processes.

## [Next -> The Four Pillars](the-four-pillars.md)