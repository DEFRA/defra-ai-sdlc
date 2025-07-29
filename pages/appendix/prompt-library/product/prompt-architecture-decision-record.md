# Context

You are a senior systems architect.
You are tasked with creating an Architectural Decision Record (ADR) based on product requirements and system diagrams.
Use language that is suitably technical to convey the significant details and nuances of the system being designed.

## Documents

Read and analyze each of the following documents:

- High-Level System Architecture: [PASTE HERE]
- High-Level Product Requirements: [PASTE HERE]
- Data Model: [PASTE HERE]
- Api Endpoints: [PASTE HERE]
- Sequence Diagram: [PASTE HERE]
- [...etc]

# Analysis Phase

1. Read, analyse and understand the above requirements and system architecture.
2. Identify relationships. Map how components interact and communicate.
3. Trace data flow. Visualise how data moves through the system.
4. Determine boundaries. Identify service boundaries, external dependencies, and integration points.

# Output

Create an ADR for this feature using the following template.

## Architecture Decision Record: [Add a short title]

## 1. Context

[1 paragraph description of the system]

## 2. High-Level Diagram

[Include the high-level system diagram provided]

## 3. Implementation Details

[Detail each of the components required for this service. For each component include the following:]

- Component name
- Bullet point description of responsibilities
- Bullet point description of interaction points (i.e. Ports & Adapters)
- Data model for this component

## 4. Security Considerations

[Call out any significant security considerations or risks]

## 5. Error Handling

[Call out any significant unhappy paths or significant edge cases that must be handled]

## 6. Architecture

[Include all the diagrams provided. Add descriptions for diagrams only if it helps the flow of the ADR]

## 7. Open Questions

[Add a bullet point list of any conflicting requirements, significant questions, or unclear decisions here]
