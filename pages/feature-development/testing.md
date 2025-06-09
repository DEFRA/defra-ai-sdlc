# Testing Workflow

Testing effectively with AI can be challenging—often more so than developing new features. While AI can readily generate tests, these tests are not always valuable in the long term. We have observed that automated test creation without careful consideration often produces brittle, tightly coupled tests that break with code changes, offering little practical value.

This document outlines a recommended workflow for designing and implementing robust and sustainable tests using AI.

## Terminology

Software testing often suffers from unclear terminology, with similar terms used interchangeably or different terms referring to the same concept. This issue is made worse by outdated concepts such as the "test pyramid". Just as this lack of standardisation can lead to miscommunication among team members, it can also affect how models interpret prompts. Let us first clarify the two testing styles advocated here.

### End-to-End Testing

End-to-end testing involves testing the entire application and its dependencies via its primary interface—whether that be a human interface or a computer interface, such as an API. A good example of an end-to-end testing framework is [Playwright](https://playwright.dev/).

### Integration Testing

Integration testing is a style of testing that focuses on functionality rather than internal implementation details. It examines each feature as a whole—identifying its inputs and outputs and ensuring that its external behaviour remains consistent through the use of mocking. For example, when testing a REST API that interacts with a backend database, integration tests would mock the database and then call the API endpoints to validate the intervening logic.

Integration tests ensure that components work together correctly under realistic conditions. By concentrating on **external behaviour** (inputs and outputs) rather than **internal implementation**, they can:

- Provide robust coverage for real-world workflows.
- Reduce test brittleness, allowing safe refactoring without breaking tests.
- Serve as documentation of the expected system behaviour for end-users or dependent services.

Examples of integration testing frameworks would be Pytest (for Python) or Jest (for Javascript).

### Unit Tests

While we focus on integration-style tests, isolated unit tests remain valuable in certain contexts, such as:

- **Complex Pure Functions:** Functions with intricate logic or algorithms that benefit from isolated testing to ensure boundary conditions are correctly handled.
- **Utility Libraries:** Code that is loosely coupled to the main flow but used in multiple locations can benefit from unit tests.
- **Edge or Error Cases:** When it is impractical or overly complex to rely on mocks to simulate certain scenarios, a unit test may be a more practical solution.

If an integration test already covers a specific logic path comprehensively, a separate unit test may be unnecessary—unless explicit clarity for debugging or further documentation is required. 

## Principles

1. **Test the Functionality, Not the Implementation**  
   Write tests that treat the service or endpoint as a "black box": supply known inputs and verify that the final responses, returned data, or side effects match the expected outcomes. Focus on overall functionality rather than internal method calls, keeping tests resilient to code changes.

2. **Prefer Integration Tests Over Isolated Unit Tests**  
   Integration tests simulate real-world usage and interactions between components, often revealing issues that isolated unit tests may miss. Reserve unit tests for discrete utility functions or algorithms that are sufficiently complex to warrant independent testing.

3. **Realistic Mocking of External Dependencies**  
   **Do mock:** Truly external systems such as databases, third-party APIs, and file systems—simulate realistic responses and error conditions.  
   **Don't mock:** Internal modules, classes, or functions; test these together to ensure authentic interactions and comprehensive coverage.

4. **Use a Structured Test Design**  
   Use a clear narrative structure, such as the Given-When-Then format:
   - **Given:** Establish preconditions, test data, and necessary configurations.
   - **When:** Execute the core logic or function.
   - **Then:** Validate that the outcomes meet the specified expectations.
   This approach focuses on outcomes over internal details and aids in maintaining clarity and consistency.

5. **Avoid Brittle Tests**  
   Do not hardcode internal implementation details, such as specific function calls or class structures. Overreliance on internal details can lead to fragile tests that break with minor refactors.

## Integration Testing Workflow

The focus of the testing workflow is to have test-specific cursor rules and detailed prompts, along with close human interaction and review. 

### Prerequisites

- **Feature Requirements**: Ensure there are detailed feature requirements with clear scope, as per the [Product Requirements](product-requirements.md). This could be a User Story or Product Requirement Document, in markdown format. The document should be accessible to the Artificial Intelligence Coding Assistant (AICA).
- **AICA Rules:** Ensure there are detailed [rules for your chosen language](../../pages/appendix/language-specific) to guide the AI tools in following code style and design preferences.

### 1. Prompt the AICA Interactively

- Use an Artificial Intelligence Coding Assistant (AICA) to implement the tests.
- Use testing prompt templates from your [prompt library](../../pages/appendix/prompt-library) and reference your requirements file using the @file feature.
- As the AI generates the tests, monitor its plan to ensure alignment with your expectations.
- Once complete, "accept" the changes and review them in the git diff viewer. If the changes are unexpected or involve significant deletions, revert all changes, refine your prompt, and try again.

### 2. Run the Tests and Refine  

- Execute the tests.
- If issues arise, feed the results back into the chat to address them, providing sufficiently detailed prompting to guide the best course of action.

### 3. Review and Improve Test Coverage  

- If there are opportunities for better test coverage, prompt the AICA with precise guidance and include the output from the test coverage report.
- Address improvements on a feature-by-feature or file-by-file basis.
- Avoid asking for improvements to the entire codebase coverage in a single prompt.

### 4. User Review  

- Review and understand tests thoroughly.  
- Do not allow agents to generate tests unchecked; relying solely on them is like marking their own homework, which offers little practical value.

## End-to-End Testing Workflow

The workflow for end-to-end testing is similar to that for integration testing, with the key difference being that end-to-end tests are decoupled from the underlying code. This decoupling enables you to prompt the model to generate tests using only the requirements and rules, without referencing the source code.

As a result, AI-generated end-to-end tests can be conducted either prior to code generation or independently by a dedicated QA team if desired.

Refer to the [prompt-add-e2e-test](../../pages/appendix/prompt-library/testing/prompt-add-e2e-test.md) for an example.

## [Next -> Refactoring](refactoring.md)