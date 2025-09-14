Feature: Get pest store

  Background:
    * url "https://petstore.swagger.io/v2"
    * path 'pet'
    * def petId = 1
    * def expectedResponse = read('expectedPet.json')


  Scenario: Get an existing pet by ID
    Given path petId
    When method get
    Then status 200
    And match response == expectedResponse


