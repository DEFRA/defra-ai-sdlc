# API Requirements

```
Given the attached data model, please create requirements for API endpoints that follow this example. Please also include examples of the objects that will be sent in to each endpoint for reference. Make sure you use the plural version of the naming:

EXAMPLE:
## API Endpoints

All endpoints follow RESTful conventions. Below is a complete list of endpoints modelled after the sample `/api/v1/governance-templates` endpoint, now including PUT requests for updating resources by ID. The Audit Log endpoints allow creation (POST) and retrieval (GET) but do not permit updating or deleting entries.

### Governance Template Endpoints

#### **Endpoint:** `/api/v1/governance-templates`
- **POST request:**  
  Creates a new governance template object with all the fields passed in the body; returns the newly created object from the database.
- **GET request:**  
  Returns a list of all the governance template objects stored in the database.

#### **Endpoint:** `/api/v1/governance-templates/{id}`
- **GET request:**  
  Returns the governance template object for the given id.
- **PUT request:**  
  Updates the governance template object for the given id with the fields provided in the request body; returns the updated object.
- **DELETE request:**  
  Deletes the governance template object for the given id and returns a success message with status code 200.


DATA MODEL:
[PASTE DATA MODEL HERE]
```