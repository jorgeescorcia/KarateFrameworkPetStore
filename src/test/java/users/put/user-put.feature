Feature: update a users
  Background:
    * url "https://petstore.swagger.io/v2"
    * path 'pet'
    * def updatePet = read('updatePet.json')



  Scenario: update pet the store
    Given request updatePet
    When method put
    Then status 200
    And match response.name == updatePet.name
    And match response.status == updatePet.status