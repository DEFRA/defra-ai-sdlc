The set of Cursor rules files for Node.js backend applications.

Cursor saves the rules files in the repository in the `.cursor/rules` directory.  Each file below is a separate `.md` file in this directory.

**api-testing.mdc**
````
---
description: API Testing Standards
globs: tests/*.js
---
# API Testing Standards

## Test Structure
```javascript
import { describe, test, expect, beforeEach } from '@jest/globals'
import { init } from '../server.js'

describe('Resource API', () => {
  let server

  beforeEach(async () => {
    server = await init()
  })

  afterEach(async () => {
    await server.stop()
  })

  test('GET /api/v1/resource should return list', async () => {
    const response = await server.inject({
      method: 'GET',
      url: '/api/v1/resource'
    })
    expect(response.statusCode).toBe(200)
  })
})
```

## Testing Patterns
- Test HTTP status codes
- Test response payload structure
- Test error scenarios
- Test input validation
- Test authentication/authorization
- Mock external services
- Use proper test isolation

## Best Practices
- One assertion per test
- Clear test descriptions
- Setup/teardown in beforeEach/afterEach
- Clean test data between runs
- Test edge cases
- Test error handling
- Use test factories for data creation

## Integration Testing
- Test complete request/response cycle
- Test database interactions
- Test external service integration
- Test authentication flow
- Test rate limiting
- Test concurrent requests

## Performance Testing
- Response time benchmarks
- Load testing critical endpoints
- Memory usage monitoring
- Connection pool behavior
- Database query performance
````

---

**javascript-api.mdc**
````
---
description: Javascript in Defra
globs: *.js
---
---
description: Javascript API Standards
globs: *.js
---
# JavaScript API Standards

## Language & Runtime
- Node.js LTS
- JavaScript (ES2022+)
- TypeScript for type checking only

## Tech Stack
- Hapi.js for API framework
- Jest for testing
- ESLint + Prettier
- OpenAPI/Swagger for API documentation
- convict for configuration

## Code Standards
- Use vanilla JavaScript with JSDoc type annotations
- Use ES Modules with named exports
- Use absolute imports with '~' alias
- Follow RESTful API design principles
- Use async/await for asynchronous operations
- Implement proper error handling and logging

## Project Structure
```
/src
  /config/         # Configuration management
  /api/           
    /v1/           # API version
      /{resource}/ # Resource modules
        routes.js    # Route definitions
        handler.js   # Request handlers
        schema.js    # Joi validation schemas
        service.js   # Business logic
        model.js     # Data models
        *.test.js   # Unit tests
  /services/      # Shared services
  /utils/         # Utility functions
  /middleware/    # Custom middleware
  /db/           # Database connections
  server.js      # Server setup
```

## API Patterns
- Use proper HTTP methods (GET, POST, PUT, DELETE)
- Implement consistent error responses
- Version APIs in URL (/api/v1/...)
- Use query parameters for filtering/sorting
- Implement pagination for list endpoints
- Rate limiting on all endpoints
- Request validation with Joi
- Response validation with Joi

## Error Handling
- Use standardized error response format:
```javascript
{
  statusCode: number,
  error: string,
  message: string,
  details?: any
}
```
- Log errors with appropriate severity
- Handle async errors with try/catch
- Use custom error classes for business logic

## Security
- Implement authentication middleware
- Validate all inputs
- Sanitize all outputs
- Use CORS appropriately
- Rate limiting
- Request size limits
- Security headers

## Testing
- Unit test all handlers and services
- Integration tests for API endpoints
- Mock external dependencies
- Test error scenarios
- Test input validation
- Test authentication/authorization

## Documentation
- OpenAPI/Swagger documentation
- JSDoc for all functions
- README for setup/deployment
- API changelog
````

---

**mongodb-patterns.mdc**
````
---
description: MongoDB and Data Model Patterns
globs: src/api/**/*.js
---
# MongoDB and Data Model Patterns

## MongoDB Setup
- Uses native MongoDB driver (not Mongoose)
- Connection managed by `mongodb.js` plugin
- MongoDB client available via:
  - `server.db` - For server-level access
  - `request.db` - For request handlers
  - `server.locker` - For MongoDB locks
  - `request.locker` - For request-level locks

## Collection Naming
- Use camelCase for collection names
- Suffix with plural form (e.g., `governanceTemplates`)
- Collection names defined in model files
- Example: `collection: 'governanceTemplates'`

## Data Models
- Models defined in `model.js` files
- Use TypeScript-style JSDoc for type definitions
- Factory functions for creating documents
- Always use ObjectId for foreign keys and _id fields
- Example structure:
```javascript
/**
 * @typedef {object} ModelName
 * @property {import('mongodb').ObjectId} _id - The unique identifier
 * @property {import('mongodb').ObjectId} parentId - Reference to parent (required)
 * @property {string} name - The name field (required)
 * @property {string} [description] - Optional description
 * @property {Date} createdAt - When created (required)
 * @property {Date} updatedAt - When last updated (required)
 */

export function createModel(data) {
  const now = new Date()
  return {
    parentId: typeof data.parentId === 'string' 
      ? new ObjectId(data.parentId) 
      : data.parentId,
    name: data.name,
    description: data.description,
    createdAt: now,
    updatedAt: now
  }
}
```

## Schema Validation
- Schema validation defined in `createSchemaValidation` function
- Uses MongoDB's $jsonSchema validator
- Enforces strict validation on all collections
- Validation rules:
  - Required fields must be present
  - Field types must match specified BSON types
  - Enums enforce allowed values
  - ObjectIds for references and _id fields
  - Dates for timestamps (createdAt, updatedAt)
- Example schema:
```javascript
await db.command({
  collMod: 'collectionName',
  validator: {
    $jsonSchema: {
      bsonType: 'object',
      required: ['parentId', 'name', 'createdAt', 'updatedAt'],
      additionalProperties: false,
      properties: {
        _id: { bsonType: 'objectId' },
        parentId: { bsonType: 'objectId' },
        name: { bsonType: 'string' },
        description: { bsonType: 'string' },
        createdAt: { bsonType: 'date' },
        updatedAt: { bsonType: 'date' },
        status: { 
          bsonType: 'string',
          enum: ['active', 'inactive']
        }
      }
    }
  },
  validationLevel: 'strict',
  validationAction: 'error'
})
```

## IDs and Foreign Keys
- Always store _id and foreign key fields as ObjectIds, NEVER as strings
- Convert string IDs to ObjectIds in factory functions
- Use proper JSDoc types to document ObjectId fields
- Example foreign key handling:
```javascript
// In model.js
/**
 * @typedef {object} ChildDocument
 * @property {import('mongodb').ObjectId} _id
 * @property {import('mongodb').ObjectId} parentId
 */

// In factory function
export function createChild(data) {
  return {
    parentId: typeof data.parentId === 'string' 
      ? new ObjectId(data.parentId) 
      : data.parentId,
    // ... other fields
  }
}

// In controller
async function findChildren(request) {
  const parentId = new ObjectId(request.params.id)
  return request.db
    .collection('children')
    .find({ parentId })
    .toArray()
}
```

## Indexes
- Defined in `src/api/common/helpers/mongodb.js`
- Created on application startup
- Use compound indexes for uniqueness constraints
- Always index foreign key fields
- Example:
```javascript
// Index on foreign key
await db.collection('children').createIndex({ parentId: 1 })

// Compound unique index
await db.collection('templates').createIndex(
  { name: 1, version: 1 }, 
  { unique: true }
)
```

## Controllers
- Use native MongoDB operations
- Access DB via `request.db`
- Common operations:
  - `collection.insertOne()` - Create
  - `collection.findOne()` - Read
  - `collection.findOneAndUpdate()` - Update
  - `collection.deleteOne()` - Delete
- Handle MongoDB errors:
  - `error.code === 11000` for duplicates
  - Use Boom for HTTP errors

## Example Usage
```javascript
// Model Definition
/**
 * @typedef {object} Template
 * @property {string} name
 * @property {string} version
 */

export function createTemplate(data) {
  return {
    name: data.name,
    version: data.version
  }
}

// Controller Usage
async function handler(request, h) {
  const doc = createTemplate(request.payload)
  const result = await request.db
    .collection('templates')
    .insertOne(doc)
  return h.response({ ...doc, _id: result.insertedId })
}
```

## Validation
- Use Joi schemas for input validation
- Define schemas in `validation.js`
- Use custom ObjectId validation for ID fields
- Example:
```javascript
const objectIdSchema = Joi.string().custom((value, helpers) => {
  if (!ObjectId.isValid(value)) {
    return helpers.error('any.invalid')
  }
  return value
}, 'MongoDB ObjectId validation')

const schema = Joi.object({
  parentId: objectIdSchema.required(),
  name: Joi.string().required()
})
```

## Error Handling
- Use Boom for HTTP errors
- Handle MongoDB specific errors:
```javascript
try {
  await collection.insertOne(doc)
} catch (error) {
  if (error.code === 11000) {
    throw Boom.conflict('Duplicate entry')
  }
  throw Boom.badRequest(error.message)
}
```

## Best Practices
1. Always use ObjectIds for _id and foreign key fields
2. Convert string IDs to ObjectIds in factory functions
3. Use proper JSDoc types for ObjectId fields
4. Index all foreign key fields
5. Validate ObjectIds in Joi schemas
6. Use factory functions for document creation
7. Define TypeScript-style JSDoc types
8. Use MongoDB indexes for constraints
9. Handle MongoDB-specific error codes
10. Use request.db for database access
11. Follow collection naming conventions
12. Document all model properties
13. Use Joi for input validation
14. Return clean errors via Boom
15. Use MongoDB's native features over application logic
16. Enforce schema validation at database level 
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

**restful-api-patterns.mdc**
````
---
description: Restful API Patterns
globs: *.js,*.tsx
---
 ---
description: RESTful API Implementation Patterns
globs: src/api/**/*.js
---
# RESTful API Implementation Patterns

## Route Structure
- Group routes by resource in `/api/v1/{resource}/`
- Use plural nouns for resource names (e.g. `templates`, `users`)
- Implement standard CRUD operations:
  - GET /resource - List all
  - POST /resource - Create new
  - GET /resource/{id} - Get one
  - PUT /resource/{id} - Update one
  - DELETE /resource/{id} - Delete one

## File Organization
```
/api/v1/{resource}/
  routes.js      # Route definitions
  handler.js     # Request handlers
  schema.js      # Joi validation schemas
  service.js     # Business logic
  model.js       # Data model & factory functions
```

## Route Definition Pattern
```javascript
export default {
  name: 'resource',
  register: async (server) => {
    server.route([
      {
        method: 'GET',
        path: '/api/v1/resource',
        handler: handlers.getAll,
        options: {
          tags: ['api'],
          validate: {
            query: schemas.list
          }
        }
      },
      {
        method: 'GET',
        path: '/api/v1/resource/{id}',
        handler: handlers.getById,
        options: {
          tags: ['api'],
          validate: {
            params: schemas.id
          }
        }
      }
    ])
  }
}
```

## HTTP Status Codes
- 200: Successful GET/PUT with response body
- 201: Successful POST with new resource
- 204: Successful DELETE (no response body) - Always use for successful DELETE operations, even if resource didn't exist
- 400: Bad request / validation error
- 404: Resource not found
- 409: Conflict (e.g. duplicate entry)
- 500: Server error

## Handler Pattern
```javascript
export async function deleteResource(request, h) {
  const { id } = request.params
  await service.deleteResource(request.db, id)
  // Always return 204 for DELETE, regardless of whether resource existed
  return h.response().code(204)
}

export async function createResource(request, h) {
  const result = await service.createResource(request.db, request.payload)
  return h.response(result).code(201)
}
```

## Service Layer Pattern
```javascript
export async function getResource(db, id) {
  const result = await db
    .collection('resources')
    .findOne({ _id: new ObjectId(id) })
  
  if (!result) {
    throw Boom.notFound('Resource not found')
  }
  
  return result
}
```

## Validation Schema Pattern
```javascript
export const schemas = {
  id: Joi.object({
    id: Joi.string().required()
  }),
  create: Joi.object({
    name: Joi.string().required(),
    description: Joi.string()
  })
}
```

## Query Parameters
- Use consistent parameter names:
  - `page`: Page number for pagination
  - `limit`: Items per page
  - `sort`: Sort field
  - `order`: Sort direction (asc/desc)
  - `filter`: Filter criteria
  - `fields`: Field selection

## Response Envelope
```javascript
{
  data: [],           // Resource data
  meta: {            // Optional metadata
    total: number,
    page: number,
    limit: number
  }
}
```

## Best Practices
1. Use plural nouns for resource endpoints
2. Return 204 for successful DELETE operations - Do not check if resource existed, always return 204 on successful execution
3. Include validation for all inputs
4. Use service layer for business logic
5. Implement proper error handling
6. Use consistent response formats
7. Document with OpenAPI/Swagger
8. Include proper CORS headers
9. Implement rate limiting
10. Version APIs in URL path
````