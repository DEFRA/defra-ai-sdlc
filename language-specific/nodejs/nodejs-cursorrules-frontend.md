The set of Cursor rules files for Node.js frontend applications.

Cursor saves the rules files in the repository in the `.cursor/rules` directory.  Each file below is a separate `.md` file in this directory.

**api-integration.mdc**
````
---
description: API Integration Standards
globs: src/**/*.js
---
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
---
description: Javascript in Defra
globs: *.js
---
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
````

---

**gov-uk-standards.mdc**
````
---
description: GOV.UK Frontend
globs: *.njk, *.js
---
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

**playwright-testing.mdc**
````
---
description: Playwright Testing
globs: tests/*.js
---
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

---

**navigation.mdc**
````
---
description: Navigation Standards
globs: src/config/nunjucks/context/*.js, src/views/layouts/*.njk
---
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
   {% raw %}{% extends "layouts/layout.njk" %}{% endraw %}
   {% block content %}
     {# Page content here #}
   {% endblock %}
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
