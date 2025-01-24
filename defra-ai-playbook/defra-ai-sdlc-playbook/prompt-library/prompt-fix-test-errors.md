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