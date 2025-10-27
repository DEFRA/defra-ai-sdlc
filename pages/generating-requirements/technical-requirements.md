# Technical Requirements

This section shows how to use AI to create technical artefacts for your project. Technical requirements are necessary for AI Coding Assistants (AICA) to deliver high quality code.

These are flexible guidelines rather than a specific workflow - use what's relevant to situation and requirements.

## Prerequisites

As per [Product Requirements](product-requirements.md), it is best to start with a Feature Description. You will get the best outcomes from AI by first clearly articulating the requirement in your own words. 

## Visualise Your Architecture Using AI

Quite often, architecture diagrams will help inform AI how components fit together. 

Use [prompt-high-level-architecture](../Resources-Tools/prompt-library/product/prompt-high-level-architecture.md) in an AI Assistant to generate diagrams, then refine through iterative conversation.

## Create Your Data Models Using AI

When your situation requires data models, Use [prompt-data-model-generation](../Resources-Tools/prompt-library/product/prompt-data-model-generation.md) in an AI Assistant with your product requirements as context. Work iteratively until the data model accurately represents your domain.

## Map System Interactions Using AI

When your situation requires system interaction design, Use [prompt-sequence-diagram](../Resources-Tools/prompt-library/product/prompt-sequence-diagram.md) in an AI Assistant to visualise how different parts of your system communicate. Refine through iterative conversation.

## Document Your API Specifications Using AI

When your situation requires API's, generate clear API documentation using [prompt-api-requirements](../Resources-Tools/prompt-library/product/prompt-api-requirements.md) in an AI Assistant. Refine through iterative conversation.

## Create Architectural Decision Records Using AI

Use [prompt-architecture-decision-record](../Resources-Tools/prompt-library/product/prompt-architecture-decision-record.md) in an AI Assistant to document key technical choices and their rationale. Refine through iterative conversation.

## Review Your Requirements Using AI

Before moving to feature development, you might want to analyse your requirements using [prompt-product-analysis](../Resources-Tools/prompt-library/product/prompt-product-analysis.md).

This AI-powered analysis can identifies gaps in documentation and spots alternatives you might have missed.

{% include page-navigation.html 
   prev_url="product-requirements" 
   prev_title="Product Requirements" 
   next_url="../feature-development/" 
   next_title="Feature Development" %}
