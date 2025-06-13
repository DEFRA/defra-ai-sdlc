# Workflow

The diagram below shows the main steps defined in this playbook. It is deliberately simplified. This development workflow follows recognised best practices already established throughout government, with the help of AI tools and techniques.

![](attachments/development-workflow-diagram.png)

*Image: Simplified development workflow diagram*

### Key stages of the workflow

- **Product / Service idea** - This represents the problems you need to solve for your users using existing service design and user research techniques.
- **Prompt to generate requirements documents and designs** - Use advanced models, such as the latest "thinking" models, to generate requirements documentation (features, user stories, data models, etc.) from your clearly defined ideas.
- **Create a new feature branch in git** - This workflow uses traditional git branching strategies for code versioning. Git is a simple proven technique that you can use to manage AI generated changes. 
- **Take requirements and prompt to generate code** - Use the requirements from the previous step to prompt the Artificial Intelligence Coding Assistants (AICAs) to generate code.
- **Take requirements and prompt to generate tests** - Generate tests from the same product requirements in the Coding Assistant. This makes sure the business logic defined in the requirements are tested independently from the code generation.
- **Prompt to refactor as necessary** - You can also prompt additional refactoring of the code at this point.
- **Prompt to create / update documentation** - Keep documentation up to date by prompting the Coding Assistant to update documentation based on the changes you've made.
- **Create MR for developer code review** - Generate a Merge Request (MR) in git following traditional development practices. Review each line of code for quality and brevity, making sure that the code to be deployed is production-ready.
- **Merge & Deploy** - Once you merge the MR into the main branch, use automated pipeline processes to deploy the code, as per your normal deployment processes.

## [Next -> The Four Pillars](the-four-pillars.md)