As per the [refactoring workflow](../../../feature-development/refactoring.md), it is important that you direct the Model to implement specific refactors that you want, and do not just ask it to simply refactor.

As well as this, the prompt below can also be used as a "general cleanup". This should be done for a specific file or grouping of files, rather than a whole codebase. 

```
I want to refactor @file. The goal is to make it easy to read and reason about.

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
- Ensure all changes align with cursor rules guidelines
- Focus on incremental improvements rather than major redesigns
  
Prompt me for feedback before implementing.  
```
