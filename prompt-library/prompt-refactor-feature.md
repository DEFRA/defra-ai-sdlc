Refactoring should be done in an considered, incremental way. It is advised to read the code yourself and direct the Model to implement specific refactors that you want. 

As well as this, the prompt below can also be used as a "general cleanup". This should be done for a specific file or grouping of files, rather than a whole codebase. 

```
I want ro refactor @file. The goal is to make it easy to read and reason about.

Do the following:

1. First, outline your analysis approach and methodology.

2. Then, perform a detailed code review focusing on:
   - Readability and maintainability
   - Consistency of design patterns and naming conventions
   - Code duplication and opportunities for reuse
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
- Ensure all changes align with @.cursorrules guidelines
- Focus on incremental improvements rather than major redesigns
  
Prompt me for feedback before implementing.  
```

If you want to do a more significant refactor then remove `Focus on incremental improvements rather than major redesigns`

If the refactor breaks tests, then this prompt is useful.

TODO - Review after Adams work

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

