The set of rules files for Node.js frontend applications.

Saves the rules to your AI IDE of choice. E.g.
- **Cursor** `.cursor/rules` directory.  Each file below is a separate `.md` file in this directory.
- **Claude** CLAUDE.md file. Either as one large file or by referencing the files from your core Claude file. 

**api-integration.mdc**
````
# API Integration Standards

## Configuration
- Use apiServer from config for base URL:
```javascript
import { config } from '~/src/config/config.js'
const baseUrl = config.get('apiServer')
```

## Making API Calls
- Use native fetch for HTTP requests (do not use Axios or other HTTP clients)
- Always include error handling
- Use JSON content type by default
- Follow RESTful conventions
- Use absolute imports with '~' alias

### Standard Pattern

```javascript
import { config } from '~/src/config/config.js'
import { statusCodes } from '~/src/server/common/constants/status-codes.js'
async function makeApiCall(request) {
try {
const response = await fetch(${config.get('apiServer')}/api/v1/endpoint, {
method: 'POST',
headers: {
'Content-Type': 'application/json'
},
body: JSON.stringify(data)
})
if (!response.ok) {
throw new Error(API call failed with status: ${response.status})
}
return await response.json()
} catch (error) {
request.logger.error(error)
throw error
}
}
```


## Error Handling
- Check response.ok status
- Log errors with request.logger
- Use statusCodes constants for response codes
- Return user-friendly error messages
- Propagate errors up for handling

## Response Processing 
- Parse JSON responses
- Validate response data structure
- Handle empty responses appropriately
- Use TypeScript-style JSDoc for type annotations

## Security
- Use HTTPS in production
- Include authorization headers when required
- Redact sensitive data in logs
- Follow security best practices
````

---

**javascript.mdc**
````
# JavaScript in Defra

## Language
- JavaScript
- TypeScript (for type checking only)

## Tech Stack
- Node.js + Hapi.js (do NOT use Express)
- govuk-frontend npm library
- Nunjucks templates npm library
- Webpack + Babel
- Jest + ESLint + Prettier
- SCSS + PostCSS + Stylelint

## Code Standards
- Use vanilla JavaScript (no TypeScript files)
- Use JSDoc for type annotations
- Use TypeScript for type checking only
- Use ES Modules with named exports
- Use absolute imports with '~' alias for internal project files
- Use convict for configuration management
- Use BEM-style naming with 'app-' prefix

## Project Structure
- /src/client/ - Client Side rendered (e.g. window operations)
  - /javascripts
    - /feature1 - Grouped by features
- /src/config/ - Configuration and setup
  - /nunjucks/ - Template engine setup
    - /filters/ - Custom Nunjucks filters
    - /globals/ - Global template variables
- /src/server/ - Server-side code
  - /common/ - Shared components and utilities
    - /templates/ - Base templates and layouts
    - /components/ - Reusable view components
  - /{feature}/ - Feature modules
    - controller.js - Route handlers and business logic
    - controller.test.js - Unit tests
    - index.js - Route definitions
    - /views/ - Feature-specific templates
  - router.js - Main route aggregation
  - index.js - Server setup and plugins

## Controller Patterns
- Export named functions
- Use JSDoc to document parameters
- Standard parameters: (request, h)
- Consistent error handling:
  - Try/catch blocks
  - Error logging with request.logger
  - User-friendly error responses
- Use h.view for template rendering
- Use h.redirect for navigation

## API Integration
- Use fetch for API calls
- Base URL from config
- JSON content type
- Response status checking
- Error propagation
- Consistent error handling

## Configuration
- Use config module for settings
- Environment-based configuration
- Consistent config access pattern
- Type-safe config values

## Markdown Parsing
- Use marked library for parsing markdown
- Configure marked options to match GDS styling
- Always sanitize markdown output
- Common use cases:
  - Standards content
  - Documentation
  - Help text

## Testing
- Write comprehensive Jest tests
- Test functionality, not implementation
  - End-to-end coverage
  - API: test input/output
  - UI: test behavior + use data-testid
- Use describe blocks and beforeEach for setup
- Mock external dependencies

## Template Handling
- Configure Nunjucks search paths in nunjucks.js:
  - govuk-frontend templates
  - project views directory
  - common templates
  - common components
- Use h.view with template paths relative to search paths
- Bind controller methods when used as route handlers
- Follow template inheritance patterns from gov-uk-standards
- Keep templates close to their feature modules

## Refactoring
Delete unused code.
When updating functionality, replace the entire old implementation - never maintain both old and new paths simultaneously.
Never leave legacy or redundant code behind.

## Comments and references
Never refrence external story numbers, tickets, or requirements in code or comments.
````
---

**gov-uk-standards.md**
````
# GOV UK Frontend

## Tech Stack
- Node.js + Hapi.js
- govuk-frontend npm library
- Nunjucks templates

## Template Structure
- Use layouts/page.njk as base template
- Follow GDS template hierarchy
- Required template blocks:
  - pageTitle: Page title with " - Defra SDLC Governance Checklist" suffix
  - content: Main content area
- Use govuk-width-container for page layout
- Use govuk-main-wrapper for main content
- Use govuk-grid-row and govuk-grid-column-* for grid layouts

## Template Inheritance
- Always use search path style imports (e.g. {% raw %}{% extends "layouts/page.njk" %}{% endraw %})
- Never use relative paths in extends/include statements
- Base template is at src/server/common/templates/layouts/page.njk
- Feature templates should be in src/server/{feature}/views/
- Common components in src/server/common/components/

## Component Usage
- Use GDS components with data-module="govuk-button" where needed
- Follow GDS class naming:
  - Headings: govuk-heading-xl, govuk-heading-l, etc.
  - Body text: govuk-body
  - Tables: govuk-table with appropriate child classes
  - Buttons: govuk-button, govuk-button--warning for variants
  - Forms: govuk-form-group, govuk-input, etc.
  - Error handling: govuk-error-message, govuk-error-summary

## Content Guidelines
- Follow GDS content patterns
- Use appropriate heading hierarchy
- Ensure accessible content structure
- Include proper ARIA roles and attributes
- Use semantic HTML elements

## Error Handling
- Use consistent error templates
- Display user-friendly error messages
- Include status codes where appropriate
- Provide clear next steps for users

## Navigation
- Use buildNavigation helper for consistent nav
- Implement breadcrumbs where appropriate
- Clear call-to-action buttons
- Logical page flow

## Nunjucks Filters
- Custom filters located in src/config/nunjucks/filters/
- Each filter should have its own file
- Common filters:
  - formatDate
  - formatCurrency
  - markdown (for content formatting)
````

---

**playwright-testing.md**
````
# Playwright Testing Rules

## Testing Philosophy
- Focus on user-visible behavior and outcomes rather than internal implementation details.
- Keep tests isolated, independent, and reflective of end-to-end user journeys.
- Test server-rendered content and interactive behaviors from a user's perspective.
- Ensure tests remain robust by avoiding strict mode locator violations through specific and scoped selectors.

## Testing Strategy

### Element Scoping and Selectors
- Always scope element checks to their containing parent to avoid matching multiple elements.
- Use relative selectors and `:has()` filters to narrow down to specific instances (e.g., table rows, details components).
- Refine selectors with regex for whitespace and exact text when needed.
- Avoid global page-level selectors for nested elements.

#### Selector Priority
1. Role-based selectors with exact text, e.g., `getByRole('button', { name: 'Submit', exact: true })`
2. ARIA label selectors, e.g., `getByLabel('Search')`
3. Component-specific class selectors with context filtering, e.g., `locator('.govuk-details__summary-text', { hasText: /Summary Text/ })`
4. Scoped locators using `:has()` and `filter()` for parent-child relationships.
5. Generic text matching as the last resort, e.g., `getByText('Content')`

### State and Interaction Testing
- Verify both initial and changed states of interactive components.
- Test interactive behaviors like clicking to expand/collapse a details component and verify resulting state changes (e.g., checking for the `open` attribute).
- Test keyboard interactions, attribute changes, and error states.
- Ensure tests cover both default views and dynamic transitions.

## Test Structure
- Place tests in the `/tests` directory with a `.spec.js` extension.
- Group related tests using `test.describe()`.
- Use `test.beforeEach()` for common setup steps.
- Write clear, descriptive test names (e.g., "should display error message when API fails").
- Always use ES Module syntax with named imports (e.g. `import { test, expect } from '@playwright/test';`).

## GDS Component Testing

### Common GDS Component Selectors
- **Details Component:**
  ```javascript
  // Target summary text within a details component
  page.locator('span.govuk-details__summary-text', { hasText: /Summary Text/ });
  // Target content within the details component
  page.locator('div.govuk-details__text').filter({ hasText: /Content Text/ });
  ```
- **Table Component:**
  ```javascript
  // Target table by accessible caption or role
  page.getByRole('table', { name: 'Caption Text' });
  // Target a specific row using role and text
  page.getByRole('row', { name: 'Row Content' });
  // Use scoped selectors within a row
  const row = page.getByRole('row', { name: 'Row Content' });
  row.locator('.govuk-tag');
  ```
- **Tags:**
  ```javascript
  // Target a tag with specific text
  page.locator('.govuk-tag', { hasText: 'Tag Text' });
  // Verify tag color variants with regex matching
  await expect(tag).toHaveClass(/govuk-tag--blue/);
  await expect(tag).toHaveClass(/govuk-tag--green/);
  await expect(tag).toHaveClass(/govuk-tag--red/);
  ```
- **Buttons:**
  ```javascript
  page.getByRole('button', { name: 'Button Text' });
  ```

### GDS Component Testing Patterns
- **Details Component:**
  - Test summary text visibility.
  - Test expand/collapse functionality by clicking the summary and asserting the open attribute.
  - Verify that the expanded content renders the expected text.
  - Include keyboard accessibility tests.
- **Tables:**
  - Verify the presence of captions, headers, and cell content.
  - Check responsive behavior using scoped selectors for rows.
- **Form Components:**
  - Test validation messages and error summaries.
  - Verify correct display of hint texts and input states.

### Accessibility Testing
- Integrate axe-core (e.g., using `@axe-core/playwright`) to run automated accessibility scans.
- Test keyboard navigation flows and focus management.
- Verify that screen reader announcements are correct.
- Check for meeting color contrast standards and proper ARIA attributes.
- Example:
  ```javascript
  import AxeBuilder from '@axe-core/playwright';
  const results = await new AxeBuilder({ page }).analyze();
  expect(results.violations).toEqual([]);
  ```

### Server-Side Testing Considerations
- Test complete user journeys including form submissions, redirects, and session handling.
- Verify that server-rendered content is correct.
- Include tests for error pages and status codes.
- Ensure that navigation flows are smooth and predictable across the application.
````
----
**navigation.md**
````
# Navigation Standards

## Navigation Configuration

Navigation items should be managed through the `buildNavigation` helper function:

```javascript
// src/config/nunjucks/context/build-navigation.js
export function buildNavigation(request) {
  return [
    {
      text: 'Menu Item',
      url: '/path',
      isActive: request?.path?.startsWith('/path')
    }
  ]
}
```

## Key Components

1. **Navigation Items Structure**
   - text: Display text for the menu item
   - url: URL path for the menu item
   - isActive: Function to determine active state
   
2. **Active State**
   - Use `startsWith()` for paths with sub-pages
   - Handle null/undefined paths with optional chaining
   - Match exact paths for single-page items

## Implementation Steps

1. Update `buildNavigation.js`:
   - Add new navigation items
   - Define active state logic
   - Maintain order based on information architecture

2. Add corresponding routes in `base.js` or feature-specific route files:
   ```javascript
   {
     method: 'GET',
     path: '/new-path',
     handler: (request, h) => {
       return h.view('view-name', {
         currentPath: request.path
       });
     }
   }
   ```

3. Create view templates for new navigation items:
   ```nunjucks
   {% raw %}{% extends "layouts/layout.njk" %}
   {% block content %}
     {# Page content here #}
   {% endblock %}{% endraw %}
   ```

## Testing

1. Update `build-navigation.test.js` when adding new items:
   ```javascript
   test('should mark new item as active when on its path', () => {
     const request = { path: '/new-path' }
     const nav = buildNavigation(request)
     expect(nav[index].isActive).toBe(true)
   })
   ```

2. Add Playwright tests for navigation behavior:
   ```javascript
   test('should navigate to new page when clicking menu item', async ({ page }) => {
     await page.click('text=Menu Item')
     await expect(page).toHaveURL('/new-path')
   })
   ```

## Best Practices

1. **Consistency**
   - Follow GDS navigation patterns
   - Use consistent naming conventions
   - Maintain logical grouping of items

2. **Accessibility**
   - Ensure keyboard navigation works
   - Maintain clear active states
   - Follow ARIA best practices

3. **Maintenance**
   - Keep navigation items in sync with routes
   - Document any special navigation logic
   - Test all navigation paths

## Common Patterns

1. **Sub-Navigation**
   ```javascript
   {
     text: 'Parent',
     url: '/parent',
     isActive: request?.path?.startsWith('/parent'),
     items: [
       {
         text: 'Child',
         url: '/parent/child',
         isActive: request?.path === '/parent/child'
       }
     ]
   }
   ```

2. **Conditional Navigation**
   ```javascript
   {
     text: 'Admin',
     url: '/admin',
     isActive: request?.path?.startsWith('/admin'),
     show: request?.auth?.isAdmin
   }
   ```

## Error Handling

- Handle undefined/null request objects
- Validate navigation item properties
- Log navigation errors appropriately 
````
----
**config.md**
````
## Convict Config / Configuration

### Core Principles

Environment-Only Configuration: All configuration values must come from environment variables

Split Default Environment Variables by Directory:

```
project-root/
├── config/
│ ├── config.js
│ ├── development.json
│ ├── test.json
│ └── production.json
```

Environment-Specific Variables Loaded using Convict: `config.loadFile('./config/' + config.get('env') + '.json');`

Production Variables Must Never Have Default Values: Production should fail when envars are not set

Fail-Fast Philosophy: Missing configuration should immediately halt application startup to prevent undefined behavior

Explicit Configuration: Every required configuration value must be explicitly defined and validated

Type Safety: All configuration values must have defined types and validation rules

No Magic Values: Reject implicit defaults or "sensible" fallback values in favor of explicit configuration

### Rules

#### Must Have (Critical)

RULE-001: All default configuration properties must have default: null and env property defined

RULE-0011: Only environment-specific properties may set defaults. Use the names env files (e.g., config/test.json), and
production.json must not contain default values

RULE-002: Schema validation must run on application startup with validate({ allowed: 'strict' })

RULE-003: Use the custom `format` validation functions when additional validation is required

RULE-004: Never use hardcoded default values in the schema definition

RULE-005: Environment variable names must follow SCREAMING_SNAKE_CASE convention

RULE-006: Call config.validate() immediately after schema definition and before any configuration usage

RULE-007: All configuration errors must throw exceptions that prevent application startup

#### Should Have (Important)

RULE-101: Group related configuration properties using nested schema objects

RULE-102: Use descriptive doc properties for each configuration field

RULE-105: Log all configuration keys (not values) on successful validation for debugging

RULE-106: Use Convict's built-in formats where applicable (port, url, email, ipaddress)

### Quick Decision Guide:

When in doubt: If a configuration value is needed, it must be explicitly provided via environment variables or the
application must fail to start.
````
----
**naming.md**
````
## Intention Revealing Naming

### Core Principles

Names are Documentation: Every name should tell a complete story about what it represents, eliminating the need for comments or mental translation

Domain Over Implementation: Names should reflect business concepts and purposes rather than technical implementation details

Searchability and Uniqueness: Names should be specific enough to be easily searchable and immediately distinguishable from similar concepts

Progressive Disclosure: Directory and module names should reveal increasing detail as you navigate deeper into the structure

### Must Have (Critical)

RULE-001: Never use generic container names like "utils", "helpers", "shared", "common", "lib", or "tools" - these provide zero information about purpose or domain

RULE-002: Directory names must describe their actual contents using domain-specific terms (e.g., authentication/, payment-processing/, user-notifications/)

RULE-003: Function names must be verbs or verb phrases that describe what they do (e.g., validateUserCredentials(), calculateShippingCost(), sendPasswordResetEmail())

RULE-004: Boolean variables and functions returning booleans must use is/has/can/should prefixes (e.g., isAuthenticated, hasPermission, canEdit, shouldRetry)

RULE-005: Constants must use SCREAMING_SNAKE_CASE and describe what they represent, not their value (e.g., MAX_LOGIN_ATTEMPTS, not FIVE)

### Should Have (Important)

RULE-101: Module exports should match their filename to maintain consistency (e.g., userValidator.js exports userValidator or related functions)

RULE-102: Async functions should indicate their asynchronous nature in the name when not obvious from context (e.g., fetchUserData(), loadConfiguration())

RULE-103: Error classes and error-related variables should include "Error" in their name (e.g., ValidationError, authenticationError)

RULE-104: Configuration files and modules should clearly indicate environment or purpose (e.g., database.config.js, redis.connection.js)

### Could Have (Preferred)

RULE-201: Use consistent naming patterns within the same domain (if you have createUser(), use createOrder(), not makeOrder())

RULE-202: Prefer longer, descriptive names over abbreviated ones (e.g., calculateTotalPriceWithTax() over calcTotWTax())

RULE-203: Group related functionality using consistent prefixes (e.g., user-creation/, user-authentication/, user-profile/)

RULE-204: Event names should follow a consistent pattern indicating when they occur (e.g., user.created, payment.processed, order.shipped)

RULE-205: Middleware functions should describe what they do or check (e.g., requireAuthentication, validateRequestBody, rateLimiter)

### When rules conflict:

Prioritize clarity and understanding over brevity

Consider the primary audience who will read and maintain the code

Follow established patterns in the existing codebase for consistency

### Valid reasons for exceptions:

Well-established industry conventions (e.g., i for loop counters in small, clear contexts)

Third-party API requirements that dictate naming

````
----
**testing.md**
## TDD

### Core Principles

Tests Define Behavior, Not Implementation: Tests should describe what the system does, not how it does it. Focus on
observable behavior and outcomes.

Confidence Over Coverage: The goal is to have enough tests to confidently refactor and modify code, not to achieve
arbitrary coverage percentages.

Red-Green-Refactor Cycle: Always write a failing test first, then write the minimum code to pass, then refactor with
confidence.

BDD Mindset: Think in terms of Given-When-Then scenarios that describe real-world usage and requirements.

Test as Documentation: Tests should serve as living documentation that clearly communicates the system's expected
behavior.

### Must Have (Critical)

RULE-001: Write a failing test before writing any production code. The test must fail for the right reason,
demonstrating that it's actually testing the intended behavior.

RULE-002: Each test must follow the Arrange-Act-Assert (AAA) or Given-When-Then (GWT) pattern with clear separation
between setup, execution, and verification phases.

RULE-003: Test names must clearly describe the scenario being tested using descriptive language (e.g., "should return
404 when user does not exist" rather than "test user not found").

RULE-004: Tests must be isolated and independent. Each test should be able to run in any order without affecting other
tests.

RULE-005: Never test implementation details. Focus on public APIs, observable behavior, and outcomes that matter to
users or consuming code.

RULE-006: Each test should verify one specific behavior or scenario. Multiple assertions are acceptable if they all
relate to the same behavioral outcome.

### Should Have (Important)

RULE-101: Use descriptive test suite organization with describe blocks that group related functionality and provide
context.

RULE-102: Implement proper test cleanup using beforeEach, afterEach, or equivalent hooks to ensure consistent test
state.

RULE-103: Mock external dependencies (databases, APIs, file systems) to ensure tests are fast, reliable, and focused on
the unit under test.

RULE-104: Write tests at multiple levels (unit, integration, e2e) based on the confidence needed, not to achieve
coverage targets.

RULE-105: Keep test setup code DRY by extracting common test utilities and factories, but ensure each test remains
readable and self-contained.

RULE-106: Test edge cases and error scenarios, not just the happy path. Consider boundary conditions, null values, and
exceptional cases.

### Could Have (Preferred)

RULE-201: Implement custom test matchers or assertions for domain-specific validations to improve test readability.

### Decision Framework

When rules conflict:

- Prioritize test clarity and maintainability over DRY principles

- Choose readability over clever abstractions

- Favor explicit setup over implicit magic

### Key Principles:

Write tests that describe behavior, not implementation details

Focus on confidence to refactor, not coverage percentages

Always follow Red-Green-Refactor: failing test → pass → improve

#### Critical Rules:

Must write a failing test before any production code

Must use Given-When-Then or Arrange-Act-Assert patterns

Always test public behavior, never private methods

Must keep tests isolated and independent

#### Quick Decision Guide:

When in doubt: Ask yourself "Am I testing what the code does (behavior) or how it does it (implementation)?" Always
choose behavior.

# BDD Testing Rules

_Rules for writing behavior-driven tests that are pragmatic, maintainable, and focused on testing behavior rather than
implementation details. These rules promote test consolidation, reduce duplication, and ensure tests remain valuable
documentation of system behavior._

## Context

**Applies to:** All test files, unit tests, integration tests, and end-to-end tests
**Level:** Tactical - directly impacts daily development practices
**Audience:** Developers writing or maintaining tests

## Core Principles

1. **Test Behavior, Not Implementation:** Tests should verify what the system does, not how it does it
2. **DRY Tests:** Eliminate duplicate test code and consolidate similar test scenarios
3. **Tests as Documentation:** Tests should clearly communicate the expected behavior of the system
4. **Pragmatic Coverage:** Focus on testing critical behaviors and edge cases, not achieving arbitrary coverage metrics

## Rules

### Must Have (Critical)

- **RULE-001:** Test names must describe the behavior being tested, not the implementation (e.g., "returns user profile
  when authenticated" not "getUserProfile function works")
- **RULE-002:** Consolidate tests that verify the same behavior with minor variations into parameterized tests or single
  comprehensive tests
- **RULE-003:** Each test must have a clear arrange-act-assert structure with appropriate separation
- **RULE-004:** Tests must not depend on implementation details like private methods, internal state, or specific data
  structures
- **RULE-005:** Avoid testing framework code, libraries, or language features - focus on your application's behavior

### Should Have (Important)

- **RULE-101:** Use descriptive test data that clarifies the test's intent (e.g., "expired-token" instead of "token123")
- **RULE-102:** Group related tests using describe/context blocks that form readable behavior specifications
- **RULE-103:** Extract common test setup into well-named helper functions rather than duplicating setup code

## Patterns & Anti-Patterns

### ✅ Do This

```javascript
// Good: Testing behavior with consolidated tests
describe('SessionManager', () => {
  describe('when creating a new session', () => {
    it('includes session metadata in the response', async () => {
      const user = {id: 'user-123', email: 'test@example.com'}

      const session = await sessionManager.createSession(user)

      expect(session).toMatchObject({
        userId: user.id,
        createdAt: expect.any(Date),
        expiresAt: expect.any(Date)
      })
      expect(session.expiresAt > session.createdAt).toBe(true)
    })
  })
})
```

### ❌ Don't Do This

```javascript
// Bad: Multiple tests for the same behavior
describe('getTimestamp', () => {
  it('returns a Date object', () => {
    const result = getTimestamp()
    expect(result).toBeInstanceOf(Date)
  })

  it('returns current time', () => {
    const before = Date.now()
    const result = getTimestamp()
    const after = Date.now()
    expect(result.getTime()).toBeGreaterThanOrEqual(before)
    expect(result.getTime()).toBeLessThanOrEqual(after)
  })

  // These should be one test verifying timestamp behavior
})
```

---

## TL;DR

**Key Principles:**

- Test what the system does, not how it does it
- Eliminate duplicate tests by consolidating similar scenarios
- Write tests that serve as clear behavior documentation

**Critical Rules:**

- Must use behavior-describing test names
- Must consolidate duplicate test scenarios
- Must structure tests with clear arrange-act-assert
- Must not test implementation details
- Must focus on application behavior, not framework functionality

**Quick Decision Guide:**
When in doubt: Would a new developer understand the system's expected behavior by reading this test?