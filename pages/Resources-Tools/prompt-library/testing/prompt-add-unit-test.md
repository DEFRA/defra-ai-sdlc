# Add Unit Test

These are examples of unit test prompts

## API Tests

```
I have provided you with a Product Requirements document(PRD). Please analyze the features and User Stories and create new tests for the features.

## Analysis Requirements
1. Review testing standards from the testing cursor rules
2. Analyze:
   - Source code
   - Unit interactions
   - External dependencies requiring mocks
   - Data models and flows
   - Existing test coverage

## Implementation Guidelines
1. Test Structure:
   - Use Given-When-Then pattern with descriptive comments
   - Focus on journey workflows over isolated units
   - Mock external dependencies appropriately

2. Test Coverage:
   - Core user scenarios and workflows
   - Edge cases and error conditions
   - Both happy and unhappy paths

3. Quality Standards:
   - Clear test descriptions
   - Meaningful assertions
   - Efficient test setup and teardown

## Constraints
- Scope: Modify only the test file and test utilities / helpers
- Format: Deliver complete, production-ready test code
- Standards: Follow the testing cursor rules

## Output
After creating the tests please execute them and fix any issues
```

## Front End Tests

```
# CONTEXT

I have provided you with a Product Requirements Document (PRD). Please analyze feature [FEATURE_NAME] and its User Stories to create comprehensive Jest tests. Do not work on other features yet.

## ANALYSIS PHASE

Before writing tests, please analyze:
- The specific feature and associated user stories in the PRD
- The relevant source code components and their interactions
- Unit interactions with other components/services
- External dependencies requiring mocks (APIs, services, databases)
- Data models, state management, and user data flows
- Existing test coverage and testing patterns used in the codebase

## IMPLEMENTATION PHASE

### Testing Philosophy:
- Focus on user-visible behavior and outcomes rather than implementation details
- Test both server-rendered content and client-side interactive behaviors
- Verify functionality from a user's perspective (what users see and experience)
- Test component contracts and interfaces, not internal workings
- Mock external dependencies like APIs, but use realistic mock data

### Test Types to Include:
- Functional tests that verify user workflows
- Component rendering tests (snapshot or DOM verification)
- Interactive behavior tests (user actions, form submissions)
- Error handling and edge case tests
- Accessibility tests where applicable

### Test Structure:
- Use Given-When-Then pattern with descriptive comments
- Maintain clarity by using descriptive test names
- Group related tests logically using nested `describe` blocks
- Use setup and teardown hooks consistently (`beforeEach`, `afterEach`)
- Isolate tests to prevent cross-test dependencies

## CONSTRAINTS

- Scope: Modify only the test files, not the source code
- Format: Deliver complete, production-ready test code
- Coverage: Aim for comprehensive coverage of user scenarios rather than 100% code coverage
- Performance: Ensure tests run efficiently and don't cause unnecessary re-renders

## VERIFICATION PHASE

Please provide:
1. A summary of your analysis of the feature
2. The complete test implementation with explanatory comments
3. An execution report for the tests
4. Any issues encountered and their solutions
5. Recommendations for improving testability (if applicable)
``` 

{% include page-navigation.html 
   prev_url="prompt-add-journey-test" 
   prev_title="Add Journey Test" %}