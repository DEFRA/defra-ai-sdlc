---
layout: default
title: Prompt - Add Journey Test
permalink: /pages/appendix/prompt-library/testing/prompt-add-journey-test/
---

# Add Journey Test

This is an example prompt, for illustration. You will need to update the "Test Setup" and "Test Interaction Data" sections to suit your specific requirements.

```
Create a Playwright journey test that meets the requirements in this user story: []

Follow the Playwright testing cursor rules

ANALYSIS PHASE:
- Understand the user story
- Understand the Playwright testing cursor rules
- Identify:
  - Each of the BDD scenarios to be tested
  - Page structure; the tree of page markup, containing noteworthy elements for the tests
  - Component Structure; tree of components markup, for those components that are relevant to the test
  - The expected user interactions
  - The most appropriate selectors / locators, including using relative selectors for nested or related components

Test Setup:
- Base URL: /standards/standard-sets

Test Interaction Data:
Use these values to interact with the application:
- Standard Set: Test Standards
- Standard: Java Coding Standards
- Classification: Java
- Repository URL: https://github.com/ee-todd/test-standards-set/
- Note: Do not expect specific IDs, as these can change between environments

Important Considerations:
- Give special consideration to scoping elements - like finding classifications and standards within table rows, and using :has() selectors for parent-child relationships.
- The tests will be journey tests with the real application. No mocks
- Use JavaScript (not TypeScript)

IMPLEMENTATION PHASE:
- Implement tests for each of the BDD Scenarios in the user story
- Follow the Playwright testing cursor rules
```

Adding an accessibility scan:

```
Please add a simple test to use `@axe-core/playwright` to do an accessibility scan against the page. Search @Web for how to do this
``` 