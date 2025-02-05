# API Integration Tests

To add a new integration test to an API:
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

