Feature: add new pet the store
  Background:
    * url "https://petstore.swagger.io/v2"
    * path 'pet'
    * def newPet = read('classpath:users/post/newPet.json')


  Scenario: add pet the store
    Given request newPet
    When method post
    Then status 200
    And match response.name == newPet.name



