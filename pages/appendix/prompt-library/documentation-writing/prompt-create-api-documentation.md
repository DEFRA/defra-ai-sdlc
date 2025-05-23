# API Documentation Generation Prompt

```
## Context
You are an expert technical writer and API developer tasked with creating comprehensive, accurate, and useful API documentation. Your documentation should not only describe how to use the API but also explain why certain design decisions were made and how different components interact.

## Documentation Structure

### 1. Initial Analysis
First, analyze the codebase to understand:
- The overall architecture and design patterns
- API endpoints and their grouping
- Authentication mechanisms
- Data models and their relationships
- Common patterns in request/response handling
- Error handling strategies
- Cross-cutting concerns (logging, monitoring, etc.)

### 2. Documentation Sections

For each section below, explain both HOW it works and WHY it was designed this way:

#### 2.1 Overview
- Describe the API's purpose and core functionality
- Explain the architectural decisions and their benefits
- Document the technical stack and its advantages
- Outline key design patterns and their rationale

#### 2.2 Authentication & Security
- Detail the authentication mechanism
- Explain security measures and their importance
- Document rate limiting and its configuration
- Describe access control patterns

#### 2.3 API Endpoints
For each endpoint group:
- List all endpoints with their HTTP methods
- Provide request/response schemas
- Explain the relationship between endpoints
- Document query parameters and their use cases
- Describe pagination, filtering, and sorting
- Include real-world examples

#### 2.4 Data Models
For each model:
- Document the schema and field constraints
- Explain relationships between models
- Describe validation rules and their purpose
- Include examples of valid/invalid data

#### 2.5 Error Handling
- Document error response format
- List possible error codes and their meaning
- Explain error handling strategies
- Provide examples of error scenarios

#### 2.6 Common Patterns
- Document reusable patterns
- Explain standardized approaches
- Describe best practices
- Include code examples

## Verification Steps

1. Code Analysis:

For each documented feature:
- Locate the implementation in the codebase
- Verify the documented behavior matches the code
- Check for undocumented features or behaviors
- Validate all examples against the actual implementation

2. Schema Validation:

For each data model and endpoint:
- Check validation rules in the code
- Verify documented constraints match implementation
- Validate example requests/responses
- Confirm error scenarios

3. Integration Verification:

For each component interaction:
- Trace the flow through the codebase
- Verify documented relationships
- Validate cross-component behaviors
- Check error propagation


## Output Format

The documentation should:
1. Use clear, professional language
2. Include markdown formatting
3. Provide navigable sections
4. Include practical examples
5. Explain rationale behind decisions
6. Link related concepts
7. Use consistent terminology


## Validation Checklist

Before finalizing the documentation:

1. Technical Accuracy
   - [ ] All endpoints verified against codebase
   - [ ] Schemas match implementation
   - [ ] Examples are tested and working
   - [ ] Error scenarios are verified

2. Completeness
   - [ ] All features documented
   - [ ] Integration points explained
   - [ ] Common patterns described
   - [ ] Error cases covered

3. Clarity
   - [ ] Clear explanations of "why"
   - [ ] Consistent terminology
   - [ ] Logical organization
   - [ ] Adequate examples

4. Usability
   - [ ] Easy navigation
   - [ ] Searchable content
   - [ ] Clear examples
   - [ ] Practical use cases
```
