Feature: College Project API Demo

  Scenario: Testing a Public API
    # 1. Request Initialization
    Given url 'https://jsonplaceholder.typicode.com/users/1'
    
    # 2. Test Execution
    When method get
    
    # 3. Assertions (Validation)
    Then status 200
    And match response.name == 'Leanne Graham'
    And match response.email contains '@'
    
    # This shows the 'Extraction' part of your table
    * def userId = response.id
    * print 'The extracted User ID is:', userId