Refactoring should be done in an considered, incremental way. Start with this prompt, then incrementally implement its recommendations one by one, checking them and testing them. 

Consider using the 'chat' mode (mode that will not modify files automatically). 

```
Please analyze this codebase and provide:

1. First, outline your analysis approach and methodology.

2. Then, perform a detailed code review focusing on:
   - Consistency of design patterns and naming conventions
   - Code duplication and opportunities for reuse
   - Readability and maintainability issues
   - Focus on incremental improvements rather than major redesigns  

3. Deliver your findings as:
   a) A prioritized list of refactoring opportunities, with each item including:
      - Description of the issue
      - Location(s) in the codebase
      - Impact assessment (high/medium/low)
      - Potential risks or dependencies
   
   b) Implementation recommendations including:
      - Suggested order of changes
      - Any prerequisite refactoring needed
      - Testing considerations

Key constraints:
- Maintain existing design patterns - do not introduce new ones
- Prioritize consistency and readability over performance optimizations
- Ensure all changes align with @.custorrules guidelines
- Focus on incremental improvements rather than major redesigns
```

If you want to do a more significant refactor then remove `Focus on incremental improvements rather than major redesigns`

If the refactor breaks tests, then this prompt is useful.

```
Analyze the failing tests after the refactor. For each failing test:

1. First describe your analysis methodology, including:
   - How you'll evaluate whether test or implementation changes are needed
   - What factors you'll consider in your decision-making

2. Then for each failing test, provide:
   - Test name and location
   - Current failure message/behavior
   - Root cause analysis
   - Determination if the failure indicates:
     a) An implementation bug introduced by the refactor
     b) A test that needs updating to match valid implementation changes
     c) A test that's revealing previously undetected issues
   
3. For each failure, provide detailed recommendations including:
   - Specific proposed changes (to implementation or test)
   - Rationale for the recommendation
   - Any ripple effects to consider
   - Suggested verification steps after making the change

4. Finally, provide:
   - Recommended sequence for fixing the issues
   - Any patterns observed across multiple failures
   - Additional tests that should be added or modified
```

