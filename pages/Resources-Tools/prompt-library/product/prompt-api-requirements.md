# API Requirements
````
## Instructions
Generate comprehensive REST API requirements following strict RESTful conventions. Use plural resource names and include practical examples.

## Required Output
For each endpoint provide:
- HTTP method, URL pattern, and parameters
- Request/response JSON examples with realistic data
- HTTP status codes (success + common errors)
- Validation rules and constraints
- Pagination, filtering, and sorting (for lists)

## Input Details

### Operations Scope
[DESCRIBE API OPERATIONS NEEDED - CRUD, BULK OPERATIONS, SEARCH, FILE UPLOADS, ETC.]

### Data Model
[PASTE DATA MODEL/SCHEMA HERE - INCLUDE RELATIONSHIPS AND CONSTRAINTS]

### Special Requirements (Optional)
[AUTHENTICATION, RATE LIMITING, VERSIONING, PERFORMANCE CONSTRAINTS, ETC.]

## Output Format
1. **API Overview** - Purpose and base URL
2. **Endpoints** - Specs with examples for each operation
3. **Error Responses** - Standard error format
4. **Data Schemas** - JSON definitions

Ask clarifying questions about ambiguities before proceeding.
````

{% include page-navigation.html 
   prev_url="prompt-data-model-generation" 
   prev_title="Data Model Generation"
   next_url="prompt-user-interface-requirements" 
   next_title="User Interface Requirements" %}