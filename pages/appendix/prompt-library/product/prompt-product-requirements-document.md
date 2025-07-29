# Product Requirements Document Generation Instructions

## 1. Analysis Phase

### 1.1 Document Review

Read and analyse each of the following documents:

- Data Model: [PASTE HERE]
- Api Endpoints: [PASTE HERE]
- Frontend Interface Requirements: [PASTE HERE]
- Architecture Decision Record: [PASTE HERE]
- [...etc]

### 1.2 Analysis Requirements

During analysis, identify:

- Core business objectives and user needs
- Technical constraints and dependencies
- Potential conflicts or gaps between documents
- Key integration points between components
- The minimal path to deliver working functionality

Confirm you have read and analyzed the content of all documents before proceeding.

## 2. Task Overview

Create a comprehensive Product Requirements Document that organizes functionality into distinct, independently
deliverable features using a "steel thread" approach. Each feature must represent a complete, thin slice of end-to-end
functionality that delivers immediate user value.

### 2.1 Steel Thread Principles

A steel thread is the thinnest possible slice of functionality that:

- Connects all necessary architectural layers (frontend → backend → data)
- Can be independently deployed and tested
- Delivers observable value to an end user
- Has no dependencies on future features
- Focuses on the happy path first, with errors and edge cases added later

## 3. Product Requirements Document (PRD) Creation

### 3.1 Required PRD Sections

The PRD must include:

1. **Objectives and Problem Statement**
    - Clear statement of goals
    - Problem being solved
    - Expected outcomes

2. **User Personas and Usage**
    - Who will use the product
    - How they will use it
    - Key user journeys

3. **Technical Requirements**
    - Technical constraints
    - Integration requirements with existing systems
    - Performance requirements
    - Security requirements
    - Scalability considerations

4. **User Experience Requirements**
    - Key user flows
    - Design principles
    - Specific UI/UX requirements

5. **Feature Specifications**
    - Detailed feature descriptions organized by delivery sequence
    - Each feature must be a complete steel thread
    - Clear value proposition for each feature

6. **Assumptions and Constraints**
    - Document any assumptions made during analysis
    - Known constraints that affect implementation
    - Dependencies on external systems or services

### 3.2 PRD Restrictions

The PRD must NOT include:

- Metrics or analysis
- Additional functionality beyond explicit requirements
- Implementation timelines
- Team assignments

## 4. Feature Organization - Steel Thread Approach

### 4.1 Feature Definition Requirements

Each feature MUST:

- Represent a complete user journey from start to finish
- Be independently deployable without waiting for other features
- Include ONLY the minimum components needed for that journey
- Focus on the primary happy path
- Defer error handling, edge cases, and optimizations to later features

### 4.2 Feature Sequencing Guidelines

Order features by:

1. **Foundation First**: Start with the absolute minimum needed for any other functionality
2. **User Value**: Each subsequent feature should add immediate, observable value
3. **No Forward Dependencies**: A feature cannot depend on any feature that comes after it
4. **Progressive Enhancement**: Later features enhance earlier ones without breaking them

### 4.3 Example Feature Breakdown Pattern

Instead of organizing by technical components:
❌ Feature 1: All Data Processing Logic
❌ Feature 2: All UI Components  
❌ Feature 3: All API Integration

Organize by complete user journeys:
✅ Feature 1: Basic Search - User can search and see results
✅ Feature 2: Filter Results - User can narrow down search results by category
✅ Feature 3: Save Favourites - User can bookmark items for later viewing
✅ Feature 4: Share Content - User can share items with others via link or email

## 5. Verification Phase

### 5.1 Steel Thread Verification Checklist

Before finalizing, verify each feature:

□ **Complete Journey**: Can a user complete one full action from start to finish?
□ **Independent**: Can this feature be deployed without waiting for others?
□ **No Forward Dependencies**: Does it work without any future features?
□ **Observable Value**: Can a user see immediate benefit?
□ **Minimal Scope**: Is this the thinnest possible implementation?
□ **End-to-End**: Does it touch all necessary system layers?

### 5.2 Anti-Pattern Detection

Check for these common mistakes:

- Features organized by technical layer instead of user journey
- Features that set up infrastructure without delivering user value
- Dependencies on features that come later
- Trying to handle all edge cases in the first implementation
- Features that partially implement multiple journeys instead of completing one

### 5.3 Final Validation

Review the complete feature set:

1. Could Feature 1 be deployed alone and provide value?
2. Does each feature build upon previous ones without breaking them?
3. Is there a clear progression of user value with each feature?
4. Are edge cases and optimizations properly deferred to later features?

## 6. Output Format

Present the final deliverable in this structure:

1. **Product Requirements Document**
    - All sections as specified in 3.1
    - Features ordered by implementation sequence

2. **Feature Delivery Roadmap**
    - Feature 1: [Title] - Minimal complete journey
    - Feature 2: [Title] - Builds on F1, adds a new journey
    - Feature N: [Title] - Enhancement/optimisation of earlier features

## 7. Example Steel Thread Feature Structure

To illustrate the approach, here's how a product catalog might be broken down:

**Feature 1: Basic Product Search**

- User can search for products and see results list
- Includes: Search input, API call, display product cards
- Defers: Filters, sorting, pagination

**Feature 2: Product Detail View**

- User can click a product and see detailed information
- Includes: Product page routing, fetch product data, display details
- Defers: Reviews, related products, image gallery

**Feature 3: Add to Cart**

- User can add a product to their shopping cart
- Includes: Cart storage, add button, cart counter update
- Defers: Quantity selection, cart persistence, checkout

**Feature 4: Cart Management**

- User can view and modify their cart contents
- Includes: Cart page, remove items, update quantities
- Defers: Save for later, bulk operations, cart sharing

Each feature delivers a complete, valuable user journey that can be independently verified.
