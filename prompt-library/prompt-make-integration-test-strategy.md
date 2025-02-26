Write a test that calls the APIs, mocks mongo and tests the 3 module (endpoint, service, repo {db_handling})

aim is to test the functionality of the endpoint. If we changed the code but the functionality remained the same the tests shouldn't break!!

"test the functionality not the implementation".

Antipattern - test specific functions in each module which means slight code changes break everything! 

black box test

input --> {black box code} --> outputs
mock black box dependencies and test that a given input gives an expected output. Write tests to do that.

Can we design supplementary unit test to fill in the useful gaps left by the integration tests.


Workflow:
1. Scan the codebase to determine where intregation tests are needed
	1. Give it guided instructions. Eg. we want to test classifications, call the functions and mock the database. Scan the codebase. (do we want it to look at architecture docs to get context?)
	2. Call the API and test the response
2. Determine whether unit test are needed to fill in functionality gaps (but dont go for 100% coverage for no reason) - make a useful criteria for this!


**Get this info into the prompt for good concepts:**
test multiple units together in a functional way with external dependencies being mocked  
this will enable code refactoring without breaking tests i.e. preventing brittle tests  
tests should also document the functionality of the applicationguidelines:  
tests should be clear, easy to read and reason about  
test the functionality, not the implementation  
test multiple units together in a functional way  
mock external dependencies, but don't mock other classes or modules within the codebase itself  
prefer integration tests over unit tests whenever possibleimportant constraints:  
avoid brittle tests that will break if the code changes  
mock external dependencies, but don't mock other classes or modules within the codebase itself (edited)