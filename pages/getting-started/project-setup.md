# Project Setup

This is a summary of the main areas to set up.
## IDE

1. **Install and Configure an Artificial Intelligence Coding Assistants (AICAs)**
   - install Cursor, or another Defra approved Coding Assistant

2. **Configure Privacy Settings**
   - In ChatGPT -> Settings -> Data Controls -> "Improve the model for everyone" ->  toggle off / disable
   - In Cursor -> Settings -> General -> Privacy Mode -> enabled

   **IMPORTANT:** You *must* enable privacy settings. This makes sure that data is not stored on providers servers and it is not used for training models.

3. **Add AI Rules Files**
   - add [Rules for AI](../../pages/appendix/rules-for-ai) and commit them to version control in your repository

## Repository Documentation

Create a directory within your repository to store documentation, such as:
- product requirements
- architecture documentation
- development rules and guidelines (reference [IDE rules](../../pages/appendix/rules-for-ai))

Make sure all documentation is:
- version controlled
- accessible to the IDE
- formatted in markdown

## [Next -> Feature Development](../feature-development)