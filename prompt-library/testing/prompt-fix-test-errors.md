```
For this failing test/error/warning:
[failure]

Note, if we have removed the functionality from the codebase being tested, then remove the test as it's no longer needed.

1. Run this test file only - verify the test itself is correct
2. Think through mocking strategy and fix only this error
3. Provide complete implementation (no placeholders)
4. Don't change the source file, only fix the test file issues
5. Run tests to confirm/verify the fix
6. if the tests fail, after each change, stop, analyse, think step by step before you attempt to fix the issue

Reference other tests for common test patterns, such as how mocking works and async testing works.
```

```
# Test Analysis and Fix Requirements

- Failing Test: [paste coverage report line here]
- Context: Recent codebase refactoring has caused test failures

## Analysis Phase
1. Run isolated test and verify test implementation
2. Review target code functionality:
   - Examine code under test
   - Compare expected vs actual behavior
   - Identify any API or interface changes from refactoring
3. Determine root cause (test or code issue):
   - Document specific reasons for determination
   - Highlight any breaking changes identified

## Implementation Phase
### If Code Issue Detected:
1. Review existing test patterns and mocking approaches
2. Develop implementation plan:
   - Map required changes
   - Identify potential side effects
   - Consider edge cases
3. Provide complete, production-ready code implementation
4. Ensure backward compatibility where possible

### If Test Issue Detected:
1. Review existing test patterns and mocking approaches
2. Plan test updates:
   - Map required assertions
   - Consider edge cases
   - Maintain existing test style
3. Provide complete, production-ready test implementation
4. Ensure proper error messages and documentation

## Verification Loop
1. Run updated test in isolation
2. Address any linting/style warnings
3. Execute full test suite for affected module
4. If any issues found:
   - Document specific failures or warnings
   - Return to Analysis Phase
   - Repeat process until all checks pass
5. Final verification:
   - 100% coverage for modified files
   - All tests passing
   - No warnings or style issues
   - No regressions

## Output Requirements
- Provide single, complete implementation
- Include all necessary imports and setup
- Follow existing codebase conventions
- No partial solutions or iterations
- Silent reasoning process
- Document any iterations required in final implementation
```
