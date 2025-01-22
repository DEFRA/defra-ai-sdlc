
## Implementing feature workflow
1. create new branch
2. PRD prompt creation
	1. create prd in gpt o1
3. review and run prd implementation prompt, include @rules.md file and link to the `architecture` folder
4. Accept code changes, use git diffs for validation
5. fix errors and test
6. add tests and ensure they pass
	1. creating tests for specific files is more targeted and less likely to go wrong
	2. Make sure it doesn't change the implementation, but only test what already exists
7. ensure code coverage is good
8. update documentation
9. update readme and/or .cursorrules file if needed
10. check in branch and create PR
11. merge PR and remove branch
12. Consider taking the prompt generated and output and feed it back in to an llm to ask how it would improve the prompt (feedback loop)
