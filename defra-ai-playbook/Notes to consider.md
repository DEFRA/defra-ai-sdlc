- make sure you setup the verbose logging as one of the first things!
- add pip freeze to get the latest versions of all the packages - add to .cursorrules?
- need to restart your terminal when .env is updated
- set log level to DEBUG when developing, to get the most verbose output to add to the IDE for debugging.
- use swagger documentation to test api endpoints
- make sure you add @docs docs to add to any prompts for implementing features
- use @web if needed
- make sure you add more than just error logs into the composer, include the previous positive logs so the composer can work out where the issue is
- fixing the obsidian mirmaid width issues: https://unmesh.dev/post/obsidian_mermaid/#:~:text=By%20adjusting%20the%20CSS%20styles,control%20and%20better%20rendering%20options.
- creating tests for specific files is more targeted and less likely to go wrong
- consider locking the source code directory in Mac while creating tests to ensure the original code is not changed

## Implementing feature workflow
1. create new branch
2. PRD prompt creation
3. create prd in gpt 01
4. review and run prd implementation prompt
5. fix errors and test
6. add tests and ensure they pass
7. ensure code coverage is good
8. update documentation
9. update readme and/or .cursorrules file if needed
10. check in branch and create PR
11. merge PR and remove branch

## Tree

The `tree` command isn't installed by default on macOS, but I can help you get it set up. Here's how:

1. First, install Homebrew if you don't already have it. You can check by running:

bash

Copy

`brew --version`

If you don't have Homebrew, install it with:

bash

Copy

`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

2. Then install tree using Homebrew:

bash

Copy

`brew install tree`

3. Once installed, you can use tree by simply typing:

bash

Copy

`tree`

Some useful options:

- `tree -L 2` (shows only 2 levels deep)
- `tree -a` (shows hidden files)
- `tree -d` (shows only directories)
- `tree -I "node_modules"` (excludes node_modules directory)

Would you like me to explain any specific tree options in more detail?