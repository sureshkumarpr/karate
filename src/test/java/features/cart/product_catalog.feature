Feature: Product Catalog Management
  # This module tests product listing and retrieval using /products endpoints [cite: 119, 120]

  Background:
    # 1.0 Initialization [cite: 148, 163]
    * url 'https://dummyjson.com'

  Scenario: Retrieve and Validate Product List
    # 2.0 Request Building [cite: 149]
    Given path '/products'
    # 3.0 API Execution [cite: 150]
    When method get
    # 4.0 Reporting & Assertions [cite: 151]
    Then status 200
    # Validating core product entity fields as per System Study 
    And match each response.products contains { id: '#number', title: '#string', price: '#number', category: '#string' }
    * print 'Successfully validated core product catalog fields'
