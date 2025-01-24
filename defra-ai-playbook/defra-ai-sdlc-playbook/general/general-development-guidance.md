# General Development Guidance

This section outlines foundational practices for effectively integrating AI tools and techniques into your development workflow. While many principles mirror standard development practices, an AI-driven approach introduces specific considerations. The following subsections provide tailored best practices for leveraging AI in development.

## AI-Specific Considerations

- **Rapid Code Generation**: AI-driven development enables rapid creation of new code and modification of existing code.
- **Revert and Re-prompt Workflow**: If the generated code does not meet expectations, it is often due to an unclear initial prompt. Rather than iterating extensively to fix issues, it is more efficient to revert, refine the prompt, and reattempt.
- **Context Limitations**: Large language models (LLMs) have limited context windows. As codebases grow in complexity, task specificity must increase.
- **Tried and Tested Good Practices Still Apply:** Whilst an AI-driven approach introduces specific considerations, time-proven good engineering practices are still very relevant

To address these considerations, the following practices are highly recommended:

## Use Git

Effective version control is essential, particularly in AI-driven workflows, to manage and reverse changes as needed.

- **Branch Per Feature**: Create a separate branch for each feature, bug fix, or change. This ensures isolation and provides clear rollback points.
- **Rollback Readiness**: Use Git to quickly revert changes if necessary, accommodating the pace of AI-driven code generation.
- **Frequent Commits**: Commit changes frequently at logical rollback points to safeguard progress and avoid breaking previously stable functionality.
- **Clear Commit Messages**: Write descriptive commit messages to track the evolution of code. This also aids AI tools in understanding changes for debugging or backtracking.
- **Continuous Integration**: Avoid long-running branches. Regularly integrate changes to minimise merge conflicts and maintain project momentum.
- **Pull Requests and Reviews**: Use pull requests to merge changes into the main branch. Define "feature complete" criteria, including passing tests and refactoring. Code reviews, whether human or AI-assisted, ensure quality and consistency.

## Ensure High Test Coverage

Thorough testing is critical in AI-accelerated development to prevent regressions and ensure the stability of rapid iterations.

- **Automated Testing**: Implement unit, integration, and end-to-end tests. AI tools can generate test cases, but these should be reviewed and refined to address edge cases.
- **Coverage Goals**: Aim for high test coverage (e.g., 80% or more), focusing on critical paths and business logic.
- **Regression Testing**: Regularly run regression tests to verify that existing functionality remains intact. AI tools can highlight areas requiring additional tests.
- **Continuous Integration (CI)**: Integrate tests into the CI pipeline for early issue detection and rapid feedback during iterations.
- **Manual Review**: Ensure tests are readable, understandable, and effectively document application functionality. Testing can be reviewed by QA, BAs, POs, or AI tools.
- **Prompting**: Tailor prompts to generate tests that align with organisational standards and preferred testing styles.

A note on **test driven development**. [insert explainer from Adam as to why this doesnt really work for unit testing]. However, the same outcome - well tested functional code - can be achieved by the process advocated in this playbook. Also, separately to the codebase and its unit tests, automated end-to-end tests can be written independently using the same requirements in "test first" manner. 

## Use Logging to Help Debug

Logging is a critical tool for diagnosing and resolving issues, particularly in AI-driven development workflows.

- **Early Setup**: Establish a comprehensive logging framework at the start of the project. AI tools benefit from detailed logs to analyse behaviour and identify issues.
- **Granularity and Debugging**: Include sufficiently granular debug-level logs to provide context for troubleshooting. AI tools can assist in adding detailed logs if required. Logs can be adjusted and reduced during refactoring when features are stable.
- **Structured Logging**: Use machine-readable formats, such as JSON, to simplify analysis with AI-driven tools.
- **Centralised Log Management**: Aggregate logs across environments with centralised solutions for streamlined debugging and performance monitoring.

## Refactor Code Often

AI-assisted development can accelerate code generation but also increase technical debt if left unmanaged. Regular refactoring ensures a clean, maintainable codebase.

- **Refactor Between Features**: Perform code reviews and refactor code between feature implementations to maintain consistency and organisation.
- **AI-Assisted Refactoring**: Leverage AI tools to identify and address code inefficiencies, such as overly complex methods or duplicate code. Use AI-driven IDEs to explore architectural improvements and refactoring opportunities.
- **Enforce Standards**: Define coding standards with tools like .cursorrules files to guide AI tools in adhering to organisational style and architecture preferences.
- **Collaborative Reviews**: Combine AI tools with manual reviews for a balanced approach, maximising both efficiency and human judgement.
- **Prompting for Refactoring**: Craft prompts that guide AI tools to refactor code according to organisational standards and preferred styles.



**A Note on Tried and Tested Good Practices**

e: 

Implement 


By adhering to these practices, you can harness the full potential of AI tools while maintaining high standards of quality and reliability in your services.