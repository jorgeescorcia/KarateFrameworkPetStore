Feature: Delete pest store
  Background:
    * url "https://petstore.swagger.io/v2"
    * path 'pet'



  Scenario: Create and delete a pet
    # 1. Reusar el escenario que crea la mascota
    * def result = call read('classpath:users/post/user-post.feature')
    * def petId = result.petId

     # 2. Borrar la mascota creada
    Given path 'pet', petId
    When method delete
    Then status 200

  # 3. Validar que ya no existe
    Given path 'pet', petId
    When method get
    Then status 404
    And match response.message == 'Pet not found'
