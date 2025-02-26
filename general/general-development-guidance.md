# General Development Guidance


TODO - Remove after testing workflow done
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


