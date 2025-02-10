# General Development Guidance

This section outlines foundational practices for effectively integrating AI tools and techniques into your development workflow. 
While many principles mirror standard development practices, an AI-driven approach introduces specific considerations. 
The following subsections provide tailored best practices for leveraging AI in development:

## AI-Specific Considerations

- **Rapid Code Generation**: AI-driven development enables rapid creation and modification of code
    - Code is even more disposable than in traditional development
    - Focus on quality over quantity in generated code
- **Revert and Re-prompt Workflow**: When generated code doesn't meet requirements:
    - Issues often stem from unclear initial prompts
    - Instead of extensive iterations, it is more efficient to:
        1. Revert changes
        2. Refine the prompt
        3. Generate fresh code
- **Context Limitations**: LLMs have finite context windows
    - Like humans, they can only handle limited cognitive load
    - As complexity increases, tasks must become more specific
- **Traditional Best Practices Apply**: While AI brings new considerations:
    - Established engineering principles remain crucial
    - Quality, maintainability, and testing are still paramount

To address these considerations, the following practices are highly recommended:

## Use Git

Effective version control is essential, particularly in AI-driven workflows, to manage and reverse changes as needed.

- **Branch Per Feature**: Create a separate branch for each feature, bug fix, or change. This ensures isolation and provides clear rollback points.
- **Frequent Commits**: Commit changes frequently at logical rollback points to safeguard progress and avoid breaking previously stable functionality.
- **Rollback Readiness**: Use Git to quickly revert changes if necessary, accommodating the pace of AI-driven code generation.
- **Clear Commit Messages**: Write descriptive commit messages to track the evolution of code. This also aids AI tools in understanding changes for debugging or backtracking.
- **Continuous Integration**: Avoid long-running branches. Regularly integrate changes to minimise merge conflicts and maintain project momentum.
- **Use Git Diff to Review Changes**: While accepting all changes at generation is fine, make sure you view the git diff to understand what changes have been made and whether they are logical. If there are sweeping code changes - generation has probably gone wrong.
- **Pull Requests and Reviews**: Use pull requests to merge changes into the main branch. Define "feature complete" criteria, including passing tests and refactoring. Code reviews, whether human or AI-assisted, ensure quality and consistency.

## Ensure High Test Coverage

Thorough testing is critical in AI-accelerated development to prevent regressions and ensure the stability of rapid iterations.

- **Automated Testing**: Implement unit, integration, and end-to-end tests. AI tools can generate test cases, but these should be reviewed and refined to address edge cases.
- **Coverage Goals**: Aim for high test coverage (e.g., 80% or more), focusing on critical paths and business logic.
- **Regression Testing**: Regularly run regression tests to verify that existing functionality remains intact. AI tools can highlight areas requiring additional tests.
- **Continuous Integration (CI)**: Integrate tests into the CI pipeline for early issue detection and rapid feedback during iterations.
- **Manual Review**: Ensure tests are readable, understandable, and effectively document application functionality. Testing can be reviewed by QA, BAs, POs, or AI tools.
- **Prompting**: Tailor prompts to generate tests that align with organisational standards and preferred testing styles.

A note on **test driven development (TDD)**, this is a particularly human-led method of thinking where you plan out your requirements and write tests against those requirements - then generate code for the tests. An LLM will never be able to work in this way as; it does not think iteratively at present and the LLM will be trained on the end result of TDD code which is code with test coverage. It will not have the exposure to the philosophy of TDD as it won't have seen many examples.

As outcome of TDD is well tested, functional code against specific requirements - the same result can be achieved by the process advocated in this playbook. 

Additionally, automated end-to-end tests can be written independently which are separately to the codebase using the same requirements can be generated in "test first" manner. 

## Use Logging to Help Debug

Logging is essential for diagnosing issues, particularly in AI-driven development workflows.

- **Early Implementation**: 
    - Establish comprehensive logging framework at project start
    - Enable AI tools to analyse behaviour and identify issues effectively
- **Granular Debugging**: 
    - Include detailed debug-level logs for troubleshooting context
    - AI tools can assist in adding targeted logging statements
    - Adjust log levels during refactoring as features stabilise
- **Structured Format**: 
    - Use machine-readable formats (e.g., JSON)
    - Simplifies analysis with AI-driven tools
- **Centralised Management**: 
    - Aggregate logs across environments
    - Enable streamlined debugging and monitoring
    - Facilitate AI-assisted performance analysis

This framework provides detailed debugging context that LLMs can interpret, improving their ability to diagnose issues and generate effective fixes.

## Refactor Code Often

AI-assisted development can accelerate code generation but also increase technical debt if left unmanaged. Regular refactoring ensures a clean, maintainable codebase.
Be aware that the speed of AI-assisted development can lead to the appearance of needing to refactor more frequently.

- **Refactor Between Features**: Perform code reviews and refactor code between feature implementations to maintain consistency and organisation.
- **AI-Assisted Refactoring**: Leverage AI tools to identify and address code inefficiencies, such as overly complex methods or duplicate code. Use AI-driven IDEs to explore architectural improvements and refactoring opportunities.
- **Enforce Standards**: Define coding standards with tools like .cursorrules files to guide AI tools in adhering to organisational style and architecture preferences.
- **Collaborative Reviews**: Combine AI tools with manual reviews for a balanced approach, maximising both efficiency and human judgement.
- **Prompting for Refactoring**: Craft prompts that guide AI tools to refactor code according to organisational standards and preferred styles.

## Thinking 'Script First'

The LLM models are very good at writing bash scripts to perform repetitive tasks, such as clearing files before testing, backing up and restoring databases and running common functions within the app.

If there is a task you need to perform, often it's faster to think 'script first' and ask the LLM to create a script rather than remembering the command line commands yourself.

## LLM Terminal Commands

IDEs like cursor and windsurf also have integration with the command line, meaning that you can often write your intention in plain english and have the LLM generate the appropriate terminal command. 
This can greatly save time if you are using niche or complex commands eg. Regex statements.