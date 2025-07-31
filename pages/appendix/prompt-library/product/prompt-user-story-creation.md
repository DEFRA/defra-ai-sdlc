# User Story Creation

## 1. Context & Objective

You will analyze a Product Requirements Document (PRD) and decompose each steel thread feature into minimal, implementable user stories. Each story should contribute to delivering core functionality while maintaining clear boundaries and dependencies.

- Product Requirements Document: [PASTE HERE]

### 1.2 Additional Document Review

Review and analyze the following supporting documents to gain comprehensive context for story creation:

- Data Model: [PASTE HERE]
- Api Endpoints: [PASTE HERE]
- Frontend Interface Requirements: [PASTE HERE]
- Architecture Decision Record: [PASTE HERE]
- [...etc]

## 2. Analysis Guidelines

### 2.1 Feature Decomposition Rules

- Break each feature into user stories
- Each story must directly contribute to the feature's core user journey
- No story should require functionality from features not yet implemented
- Focus on "just enough" implementation to make the feature functional
- Every story must be independently verifiable through user-facing functionality

### 2.2 Story Prioritization Principles

- **Core Path First**: Implement the happy path before edge cases
- **User Value**: Each story must deliver observable value to the end user
- **Technical Foundation**: Backend APIs before dependent frontend features
- **Integration Points**: Clear handoffs between stories within a feature

## 3. User Story Format

### 3.1 Required Components

Each user story MUST include all of the following elements:

1. **Story Identifier**
   - Format: `F[X].S[Y]` (e.g., F1.S1 for Feature 1, Story 1)
   - Sequential numbering within each feature

2. **Story Title**
   - Clear, action-oriented description
   - Maximum 10 words
   - Format: "[Action] [Object] [Context]"

3. **Story Type**
   - Select one: "Frontend", "Backend API", or "Full Stack"
   - Determines technical review requirements

4. **User Story Statement**
   - Format: "As a [user type], I want [goal], so that [benefit]"
   - Focus on user outcome, not implementation
   - Always real users e.g. "As a logged out user"
   - Never services or technical components e.g. "As a backend service"

5. **Design/UX Considerations**
   - Visual mockups or wireframes references
   - Interaction patterns
   - Responsive design requirements
   - Accessibility considerations
   - Mark as "N/A" if not applicable

6. **BDD Acceptance Criteria**
   - **Primary Success Scenario** (Required):
     ```
     Given [initial context]When [action performed]Then [expected outcome]
     ```
   - **Critical Failure Cases** (Required):
     ```
     Given [initial context]When [failure condition]Then [graceful handling]
     ```
   - **Edge Cases** (Optional, only if critical for MVP):
     ```
     Given [edge condition]When [action performed]Then [specific handling]
     ```

7. **Technical Approach**
   - High-level implementation strategy
   - Key technologies or frameworks
   - API endpoints (if applicable)
   - Data models or schema changes
   - Performance considerations

8. **Dependencies**
   - Format: `[Story ID]: [Reason]`
   - Only reference stories within same or earlier features
   - Include both technical and functional dependencies

9. **Integration Details**
   - How this story connects to others in the feature
   - API contracts or interfaces
   - Data flow between components
   - End-to-end testing considerations

10. **Out of Scope**
    - Explicitly list deferred functionality
    - Common examples:
      - Advanced error handling
      - Performance optimizations
      - Non-critical edge cases
      - Advanced UI polish
      - Analytics/monitoring

## 4. Story Scoping Guidelines

### 4.1 What to Include (Steel Thread Essentials)

- Minimum viable implementation for feature completion
- Basic happy path functionality
- Critical error states (system unavailable, auth failures)
- Essential data validation
- Basic UI/UX for usability

### 4.2 What to Defer (Future Enhancements)

- Comprehensive error handling for all edge cases
- Performance optimizations
- Advanced UI animations or polish
- Non-critical validations
- Detailed analytics or logging
- Batch operations
- Advanced search or filtering

### 4.3 Validation Questions

Before finalizing each story, verify:

- Can a user complete the feature's primary journey with just this story?
- Is this the minimum implementation that still provides value?
- Are all dependencies clearly identified and achievable?
- Is the scope clear enough for accurate estimation?

## 5. Output Format Requirements

### 5.1 Document Structure

```
# User Stories for [Product Name]

## Feature Overview
[Brief summary of all features and their relationships]

## Feature 1: [Feature Name]
### Feature Description
[2-3 sentences describing the complete user journey this feature enables]

### User Stories

#### F1.S1: [Story Title]
**Type**: [Frontend/Backend API/Full Stack]
**User Story**: As a [user], I want [goal], so that [benefit]

**Design/UX Considerations**:
- [Consideration 1]
- [Consideration 2]

**BDD Acceptance Criteria**:
Primary Success:
```

Given [context] When [action] Then [outcome]

```

Critical Failure:
```

Given [context] When [failure] Then [handling]

```

**Technical Approach**:
[Brief description of implementation]

**Dependencies**:
- [If any, otherwise "None"]

**Integration Details**:
[How this connects to other stories]

**Out of Scope**:
- [Deferred item 1]
- [Deferred item 2]

[Repeat for all stories in feature]

### Feature Completion Checklist
- [ ] All stories implemented
- [ ] End-to-end journey tested
- [ ] Basic error handling in place
```

### 5.2 Additional Deliverables

1. **Story Dependency Graph**: Visual representation of story relationships
2. **Feature Readiness Matrix**: Table showing which stories complete which features
3. **Deferred Items Backlog**: List of all out-of-scope items for future sprints

## 6. Quality Checklist

Before submitting stories, ensure:

- [ ] No circular dependencies exist
- [ ] All stories are independently testable
- [ ] User value is clear in each story
- [ ] Technical approach is feasible
- [ ] Scope boundaries are explicit
- [ ] BDD criteria are verifiable
