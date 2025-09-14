Feature: Delete pest store

  Scenario: delete a user
    Given url "https://petstore.swagger.io/v2/pet/1"
    When method delete
    Then status 404
