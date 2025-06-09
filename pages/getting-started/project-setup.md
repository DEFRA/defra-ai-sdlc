# Project Setup

This guide shows you how to set up a development project using AI tools and techniques. 
## Initial Setup

1. . **Configure Repository**

   With CDP:
   - initialise CDP project
   - configure GitHub repository automatically

   Without CDP:
   - create GitHub repository manually
   - set branch protection rules
   - add issue templates

## Development Environment

1. **Configure Artificial Intelligence Coding Assistants (AICAs)**
   - install Cursor
   - add required VS Code extensions
   - set up language-specific plugins

2. **Configure Privacy Settings**
   - In ChatGPT -> Settings -> Data Controls -> "Improve the model for everyone" ->  toggle off / disable
   - In Cursor -> Settings -> General -> Privacy Mode -> enabled

   **IMPORTANT:** You *must* enable privacy settings. This makes sure that data is not stored on providers servers and it is not used for training models. 

3. **Add Required Files**
   - copy language-specific files from [language-specific library](../../pages/appendix/language-specific)
   - customise IDE rules for team requirements
   - update system prompt for LLM base understanding

## Using Repository Documentation

Create a directory within your repository to store documentation, such as:
- product requirements
- architecture documentation
- development rules and guidelines (reference [IDE rules](../../pages/appendix/language-specific))

Make sure all documentation is:
- version controlled
- accessible to the IDE
- formatted in markdown

## [Next -> Feature Development](../feature-development)