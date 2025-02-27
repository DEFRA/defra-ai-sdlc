the .windsurfrules file for Defra Python applications

Windsurf has a single rule file in the root of the repository called `.windsurfrules`

```
# [PROJECT TITLE] - [SHORT PROJECT DESCRIPTION]

Every time you choose to apply a rule(s), explicitly state the rule(s) in the output. You can abbreviate the rule description to a single word or phrase.

Regardless of the request, think step by step and create a plan before implementing.  Create a plan before each code change iteration within the chat flow.

## Project Stack
- Python
- FastAPI
- Anthropic
- MongoDB

## Style Guide
### Base Standards
- PEP 8
- Pyright
- Pylint

### Formatting
- Indent: 4 spaces
- Line Length: 79 chars
- Docstring: Google style

## Code Organization
### Structure
- Descriptive names
- Module headers
- Logical chunks
- Error comments
- Test refs

### Conventions
#### Naming
- snake_case (default)
- PascalCase (classes)

#### Imports
1. stdlib
2. third_party
3. local

#### Limits
- Function lines: 50
- Nested blocks: 3

## Testing
### Tools
- pytest
- pytest-cov

### Focus
- Functionality over implementation

### Patterns
#### Structure
- Unit tests mirror src
- Integration per endpoint
- Conftest for fixtures

#### Coverage
- Happy path
- Error handling
- Edge cases
- Database errors

#### Fixtures
- mock_mongodb
- test_app
- test_client

#### Async
- mark_asyncio
- async_mock_responses

## Git Commits
- Use conventional commit prefixes (feat:, fix:, etc.)
- Keep messages concise and reference issues

## Security
- No secrets in code
- Validate inputs
- Encrypt sensitive data
```