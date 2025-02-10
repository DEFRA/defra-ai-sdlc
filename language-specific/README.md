# Language-Specific Resources

This section of the playbook provides dedicated resources, templates, and tools tailored for specific programming languages. Each language subsection includes file templates and prompts designed to help you produce code that aligns with Defra's development standards. These materials are crafted to streamline your workflow and ensure compliance with best practices. As our tools and standards evolve, this section is regularly updated to reflect the latest guidelines and improvements. We encourage you to check back frequently to stay up-to-date with the most recent changes and enhancements.

## IDE Configuration Files

The rules files for Cursor and Windsurf instruct the LLM on how to write code in a way that is consistent.

Both [Cursor](../tool-specific/tool-cursor.md) and [Windsurf](../tool-specific/tool-windsurf.md) IDEs use configuration files to instruct their AI assistants. For compatibility:

1. Create a `.cursorrules` file in your project root
2. Create a symlink to `.windsurfrules` using:
   ```bash
   ln -s .cursorrules .windsurfrules
   ```

This ensures rule changes are synchronized between both IDEs.

## Supported Languages

### Node.js
- [Node.js .cursorrules file](nodejs/nodejs-cursorrules.md)

### Python
- [Python .cursorrules file](python/python-cursorrules.md)