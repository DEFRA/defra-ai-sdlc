**High level workflow**
- Ensure there is a .cursorrules file (.windsurf rules)
- Ensure there is a PRD - use o1 or 4o to create the prd, with a prompt
- Create a new feature branch
- Prompt engineer the solution (using cascade or composer)  
- Prompt engineer the tests
- Prompt engineer a refactor (consistency)
- code review before each commit
- update the docs (feedback loop)
- merge feature branch

**Some key initial learnings** 
- prompt engineering (scope, think it through, testing, @docs, @web, using LLMs to generate prompts)
- check the code!
- as the codebase gets more complex, the scope of the task needs to get more specific 
	- i.e. the context window problem with current LLM 
 - it's good to throw away and start again
	- if you have to go through a loop 2 or 3 times, you've got your initial prompt wrong. revert, redo the prompt and/or prd and redoing
- use logging to help the model debug itself
- the LLMs will may old versions of the libraries by default - new stuff may need to use @web and override versions
- all the good practices around product delivery and software delivery still apply 
	- carve up requirements properly. do mvps or thin slices, then iterative.
	- use git to manage change. revert and redo. continuously integrate - avoid long running branches and multiple branches
	- red green refactor
	- test automation (but not quite TDD)
	- small incremental changes
- top-down thinking
		tooling - test, linting, hooks, logging, .cursor rules
		requirements - PRD

**Opportunities** 
	Agentic AI
		Dev Agents
		QA Agents
		Governance & Assurance Agents e.g. a GDS Assessor
	More powerful local models (Deepseek R1)	

**Things to watch out for**
- Things are moving fast! It's hard to keep up! Models, IDEs, Tools, Libraries, cloud offerings
	- Burnout!
- Cost
- Data use policies when working with commercial clients



