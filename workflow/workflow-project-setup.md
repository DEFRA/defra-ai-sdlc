# Project Setup

Setting up a development project effectively using AI tools and techniques ensures smooth collaboration, high productivity, and adherence to best practices. Below is a detailed guide for initializing your project:

This guide outlines how to set up a development project using AI tools and techniques. A proper setup ensures:
- smooth collaboration
- high productivity
- adherence to best practices

## Initial Setup

1. **Choose Project Platform**
   - select hosting platform (GitHub, GitLab, Bitbucket)
   - agree on Git branching strategy
   - document collaboration guidelines

2. **Configure Repository**
   With CDP:
   - initialise CDP project
   - configure GitHub repository automatically

   Without CDP:
   - create GitHub repository manually
   - set branch protection rules
   - add issue templates

## Development Environment

1. **Configure AI-Powered IDE**
   - install Cursor
   - add required VS Code extensions
   - set up language-specific plugins

2. **Configure Privacy Settings - IMPORTANT**
   - In ChatGPT -> Settings -> Data Controls -> "Improve the model for everyone" ->  toggle off / disable
   - In Cursor -> Settings -> General -> Privacy Mode -> enabled

**IMPORTANT:** Privacy settings must be enabled. This ensures that data is not persisted on providers servers and it is not used for training models. 

3. **Add Required Files**
   - copy language-specific files from [language-specific library](../language-specific/README.md)
   - customise IDE rules for team requirements
   - update system prompt for LLM base understanding

## Using Repository Documentation

Create directory within the repository to store documentation, such as:
- product requirements
- architecture documentation
- development rules and guidelines (reference [IDE rules](../language-specific/README.md))

Ensure all documentation is:
- version controlled
- accessible to the IDE
- formatted in markdown