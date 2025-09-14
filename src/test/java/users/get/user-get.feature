Feature: Get pest store

  Scenario: Get a user
    Given url "https://petstore.swagger.io/v2/pet/2"
    When method get
    Then status 200
