# Language-Specific Resources

This section of the playbook provides dedicated resources, templates, and tools tailored for specific programming languages. Each language subsection includes file templates and prompts designed to help you produce code that aligns with Defra's development standards. These materials are crafted to streamline your workflow and ensure compliance with best practices. As our tools and standards evolve, this section is regularly updated to reflect the latest guidelines and improvements. We encourage you to check back frequently to stay up-to-date with the most recent changes and enhancements.

## A note on `.cursorrules` and `.windsurfrules`

The [Cursor](../tool-specific/tool-cursor.md) and [Windsurf](../tool-specific/tool-windsurf.md) IDEs both have a (dot)file that instructs the LLM on every prompt to follow certain rules for the IDE.  On Cursor, this is called `.cursorrules` and in Windsurf, this is called `.windsurfrules`.  They serve effectively the same function, so to be compatible with both systems, we recommend creating a `.cursorrules` file, then symlinking it to `.windsurfrules` via the command: `ln -s .cursorrules .windsurfrules`.  This means if you change the rules file, it will sync between the two IDEs

## Supported Languages
### Node.js
- [nodejs .cursorrules file](nodejs/nodejs-cursorrules.md)

### Python
- [python .cursorrules file](python/python-cursorrules.md)
- todo