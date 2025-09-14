Feature: add new pet the store



  Scenario: add pet the store
    Given url "https://petstore.swagger.io/v2/pet"
    And request {"id": 0,"category": {"id": 0,"name": "Rocco"},"name": "doggie","photoUrls": ["string"],"tags": [{"id": 110,"name": "string"}],"status": "available"}
    When method post
    Then status 200