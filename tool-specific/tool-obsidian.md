# Obsidian

todo

obsidian setup in a project...

IF USING OBSIDIAN… create obsidian vault
- Remove the welcome file
- (optional) fix the appearance to be ‘Minimal’ or another template
- Files and links….
- Change “Default location for new notes” = “Same folder as current file”
- Change “Default location for new attachments” = “in subfolder under current folder” (leave folder name unchanged as ‘attachments’)
- Turn on community plugins and reload
- Browse community plugins, install and enable the following:
- Excalidraw
- Kanban
- Git

- Git options… “Custom base path (git repository path)” = ‘../’
- Create ‘product-requirements’ folder in the root of the vault
- Create ‘architecture’ folder in the root of the vault
- (optional) create kanban board for project todos
- Add the vault folder to the .prettierignore file (e.g. codereview-frontend-vault)
- Go to the defra-ai-sdlc repository, and download the .cursorrules and prompts for your programming environment
- Copy default-prompts for your programming language into the obsidian directory if using obsidian
- copy .cursorrules for you programming language into the root directory
- Commit obsidian code
- Add the obsidian workspace.json file to the .gitignore (e.g. codereview-frontend-vault/.obsidian/workspace.json)
- Fixing the mermaid width issue in obsidian: [](https://unmesh.dev/post/obsidian_mermaid/#:~:text=By%20adjusting%20the%20CSS%20styles,control%20and%20better%20rendering%20options](https://unmesh.dev/post/obsidian_mermaid/#:~:text=By%20adjusting%20the%20CSS%20styles,control%20and%20better%20rendering%20options](https://unmesh.dev/post/obsidian_mermaid/#:~:text=By%20adjusting%20the%20CSS%20styles,control%20and%20better%20rendering%20options)


Mermaid
Markdown formatting

```
# Coding Design Choices by the LLM

Cursor seems to start coding with an object oriented approach when coding Python. The rationale being that the initial libraries we used favor OO approaches. An area to monitor would be when we start using libraries where the community favors other approaches will get a mismatch in coding style throughput the repo.

We assume we could change or force the style with prompting in the .cursorrules file if needed
```
