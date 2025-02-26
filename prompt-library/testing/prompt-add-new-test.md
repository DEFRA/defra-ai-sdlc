Note that the term "integration tests" is used here to mean style of "unit" testing that emphasises functional unit testing. This style of unit testing tests the functionality; not the implementation. Multiple units are tested together. External dependencies are mocked. 

The other style of testing is end-to-end (e2e), which has other prompts.

# API Integration Tests

```
Create integrations tests for [feature] in [file path].

## Context
- Feature location: [file path]
- Related services/dependencies: [repo, service]
- Testing standards reference: .cursor/rules/02_testing.mdc

## Analysis Requirements
1. Review testing standards from .cursor/rules/02_testing.mdc
2. Study existing integration tests for patterns and conventions
3. Analyze:
   - Source code architecture
   - Integration points
   - External dependencies requiring mocks
   - Data models and flows
   - Existing test coverage

## Implementation Guidelines
1. Test Structure:
   - Use Given-When-Then pattern with descriptive comments
   - Focus on end-to-end workflows over isolated units
   - Mock external dependencies appropriately

2. Test Coverage:
   - Core user scenarios and workflows
   - Edge cases and error conditions
   - Both happy and unhappy paths

3. Quality Standards:
   - Clear test descriptions
   - Meaningful assertions
   - Efficient test setup and teardown
   - Appropriate use of test utilities and helpers @conftest.py
   - Follow the project's test data management pattern in @test_data.py
   - Do not define test data directly in test files

## Constraints
- Scope: Modify only the test file and test utilities / helpers
- Format: Deliver complete, production-ready test code
- Standards: Follow project's established testing patterns
- Dependencies: Use existing test utilities and helpers

## Output
Provide the complete test implementation in a single code block, following all project conventions and testing standards.
```

A useful prompt if it creates failing tests. However, the best approach is also to manually check why its failing and add specific instructions too:
```
this test is failing. think step by step and consider the functionality under test - what are you trying to test and why?
```

Then to do some refactoring of the test once it's working OK:
```
Compare [new test file] to [good test file] and see how it compares in terms of conventions and standards.
  
Compare in the context of @02_testing.mdc testing rules.
  
Think step by step and give me a set of reccomendations for improvement.  
  
Prompt me for feedback before implementing.
```

# Agent Integration Tests

```
# FUNCTIONAL TESTING PROMPT

## Pre-requisites
- You are given a feature description.
- You are given a [file path] to the feature in the codebase.
- **If any information is missing, prompt the user for the missing details.**

## Goal
Create integration tests for **[feature name]** located at **[file path]**.

## Dependency Analysis & Context
1. **Identify Dependencies and Usage:**
   - Determine all components and services that depend on this feature.
   - Search for module imports and function/class usage across the codebase.
   - Document the public interface(s) used by other components.

2. **Categorize Functions/Methods:**
   - **Public Interface:** Functions and methods used by other components.
   - **Internal Implementation:** Functions used only within the component.
   - **External Dependencies:** Third-party or system calls (e.g., databases, external APIs) that must be mocked.

3. **Feature Description:**
   - Provide a detailed description including:
     - The inputs (e.g., codebase files, configuration parameters, standards data).
     - The processing logic (how inputs are handled).
     - The expected outputs (e.g., compliance reports, result messages).
     - Error handling and alternate flows.
   - List any supporting services or external dependencies.

4. **User Acknowledgment:**
   - Present the complete description and dependency list to the user for confirmation before proceeding.

## Testing Standards & Analysis Requirements
1. **Review Testing Standards:**
   - Refer to the standards defined in `.cursor/rules/02_testing.mdc`.
   - Study existing tests for established patterns and conventions.
   - Check for existing fixture and patterns that can be reused (eg. in conftest.py)

2. **Analyze the Feature:**
   - Identify the entry points or public functions.
   - Determine expected input types, data structures, and output formats.
   - Identify integration points that require dependency mocking.
   - Highlight error handling scenarios.

3. **Reporting:**
   - Output your detailed analysis in a markdown file at `/reports/{a-useful-name}.md`.

## Test Scope Guidelines
1. **Focus on the Public Interface:**
   - Test functions/methods used by other components.
   - Skip tests for purely internal implementation details.
   - Clearly document why each test exists (e.g., which dependent component relies on it).

2. **Integration Boundaries:**
   - Only mock true external dependencies (databases, external APIs, file systems).
   - Allow internal implementations to run naturally.
   - Test complete end-to-end workflows rather than isolated steps.

3. **Test Coverage:**
   - **Happy Path:** Validate that valid inputs produce correctly formatted outputs.
   - **Error Conditions:** Ensure that invalid inputs or failing dependencies trigger proper exceptions or error responses.
   - **Edge Cases:** Evaluate behavior with boundary or unexpected input data.

## Test Data Management
1. **Test Data Setup:**
   - Create realistic test data that mirrors production scenarios.
   - Include both valid and invalid cases, plus edge cases.

2. **Resource and Data Management:**
   - Use appropriate fixture scopes (function, class, module) for setup and teardown.
   - Ensure test data is kept separate from test logic (e.g., via dedicated fixtures or test data files).
   - Document any required environment setup and resource cleanup steps.

## Implementation Guidelines
1. **Test Structure:**
   - Use the Given-When-Then pattern with clear inline comments.
   - Organize tests by workflow: Happy Path, Error Handling, and Edge Cases.
   - Simulate realistic end-to-end scenarios rather than isolated unit interactions.

2. **Mocking Strategy:**
   - Mock only external dependencies (e.g., database calls, external API invocations).
   - Use realistic mock responses and document any assumptions.
   - Leverage existing test utilities (e.g., @conftest.py, test data fixtures) as needed.

3. **Quality Standards:**
   - Write descriptive test names and use meaningful assertions.
   - Follow the project's coding and test conventions.
   - Ensure tests are independent, repeatable, maintainable, and readable.

## Success Criteria
1. **Coverage Requirements:**
   - All public interfaces must be tested.
   - Both happy path and error handling scenarios are covered.
   - All realistic usage patterns from dependent components are validated.

2. **Quality Checks:**
   - Tests must validate behavior rather than internal implementation details.
   - Ensure tests are fully documented, including assumptions and resource management.
   - Maintain clear setup and teardown procedures.

3. **Documentation:**
   - Provide a summary of test coverage, dependencies, and any limitations.
   - Clearly document the purpose, scope, and resource requirements for each test.

## Output Format
Provide the complete test implementation in a single code block, organized as follows:
1. **Test Setup:**
   - Required imports, fixtures, and test data setup.
2. **Happy Path Tests:**
   - Main workflow tests with expected output validations.
3. **Error Handling Tests:**
   - Tests for edge cases, error conditions, and resource cleanup.
4. **Documentation:**
   - A summary of test coverage, assumptions, and any necessary setup/teardown instructions.

## Constraints
- **Scope:** Modify only the test files and supporting test utilities.
- **Format:** Provide complete, production-ready test code that adheres to project patterns.
- **Dependencies:** Leverage existing test helpers and mocks; do not reinvent them.

## Review Checklist
Before finalizing the tests, verify:
- [ ] All public interfaces are covered.
- [ ] Only external dependencies are mocked.
- [ ] Test data is realistic and comprehensive.
- [ ] Resources are properly set up and cleaned up.
- [ ] Documentation is complete and clear.
- [ ] Tests adhere to project conventions.
- [ ] Error and edge cases are thoroughly covered.
- [ ] Assertions are meaningful and descriptive.

## Final Instructions
- **Step 1:** Prompt the user for any missing information or clarifications.
- **Step 2:** Present the analysis and plan for user feedback before proceeding with the implementation.
- **Step 3:** Once the user has confirmed, provide the complete test implementation in one code block.
```

## FrontEnd Integration Test

```
Create tests for [feature].

## Analysis Requirements
1. Review jest testing cursor rules 
2. Study existing tests for patterns and conventions in [file]
3. Analyze:
   - Source code architecture
   - Integration points
   - External dependencies requiring mocks
   - Data models and flows
   - Existing test coverage

## Implementation Guidelines
1. Test Structure:
   - Focus on end-to-end workflows over isolated units
   - Mock external dependencies appropriately

2. Test Coverage:
   - Core user scenarios and workflows
   - Edge cases and error conditions
   - Both happy and unhappy paths

3. Quality Standards:
   - Clear test descriptions
   - Meaningful assertions

## Constraints
- Scope: Modify only the test file and test utilities / helpers
- Format: Deliver complete, production-ready test code
- Standards: Follow jest testing cursor rules

## Output
Provide the complete test implementation in a single code block, following all project conventions and testing standards.
```
