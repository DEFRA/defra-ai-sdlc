An example for starting a new feature on a new branch. Use a new context window. 

Context: the PRD file (note the '@' notation to refer to a specific file in the IDE):

```
Please analyze `@prd-file` and implement [Section Number & name] as follows:

1. First, outline your understanding of:
   - The specific requirements from the section
   - How this feature integrates with existing functionality
   - Any dependencies or prerequisites

2. Perform a codebase analysis focusing on:
   - Existing patterns and conventions to follow
   - Similar features that can serve as templates
   - Integration points for the new feature
   - Reusable components or utilities

3. Provide an implementation plan including:
   - Component/file structure
   - Required changes to existing code
   - New components/modules to be created
   - Database changes (if any)
   - API endpoints (if any)
   - Testing strategy

4. For the implementation:
   - Follow existing code conventions and patterns
   - Maintain consistent naming and structure
   - Add appropriate error handling
   - Include necessary tests
   - Add documentation

5. Verification checklist:
   - List each requirement from the PRD section
   - Confirm implementation status of each requirement
   - Note any assumptions or decisions made
   - Identify areas needing product owner review

Constraints:
- Maintain consistency with existing codebase
- Follow established patterns and standards
- Consider backwards compatibility
```

A useful follow-up prompt:

```
check `@prd-file` against the implementation and let me know what is missing. give me a detailed breakdown of what has been implemented and what is missing before continuing 
```


