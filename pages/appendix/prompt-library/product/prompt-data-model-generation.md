---
layout: default
title: Prompt - Data Model Generation
permalink: /pages/appendix/prompt-library/product/prompt-data-model-generation/
---

# Data Model Generation

```
I'd like to create a data model based on the following project business and technical requirements. 

ANALYSIS PHASE:

Read, analyse and understand the following product and technical requirements:

Detailed Feature Description - [ATTACH THE OUTPUT FROM EXAMPLE-PRODUCT-REQUIREMENTS-INPUT]
System Architecture - [ATTACH THE OUTPUT FROM PROMPT-HIGH-LEVEL-ARCHITECTURE]

Ask any follow up questions that will clear up any ambiguities if needed.

IMPLEMENTATION PHASE:

Think about the above requirements and work out a simplified data model suitable for use with [MONGODB]. Also produce a Mermaid diagram so it is understandable in a relational format. Feel free to change labels or column names to be more clear if needed if they are more logical. The data model should be in a single, downloadable file using markdown formatting.

VERIFICATION AND COMPLETION PHASE:

- Make sure the final model covers all the requirements before returning a solution.
- Highlight any areas where you have made assumptions.
```