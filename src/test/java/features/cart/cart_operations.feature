Feature: Shopping Cart Management for E-Commerce
  # This module validates real-world shopping cart data structures [cite: 3, 116]

  Background:
    # Initialization: Using a reliable public e-commerce API [cite: 139, 148]
    * url 'https://dummyjson.com'

  Scenario: Retrieve a Specific Cart and Validate Data Integrity
    # Request Building: Targeting Cart ID 1 [cite: 149]
    Given path '/carts/1'
    
    # API Execution: Sending the GET request [cite: 150]
    When method get
    
    # Assertions: Validating functional data requirements [cite: 151, 169]
    Then status 200
    # Verification of totals as per system requirements [cite: 56, 170]
    And match response.id == 1
    And match response.products == '#[]'
    And match response.total == '#number'
    * print 'Successfully retrieved cart for User:', response.userId
