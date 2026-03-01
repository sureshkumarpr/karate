Feature: Data-Driven Cart Validation
  # This module manages test data sets for different users

  Background:
    * url 'https://dummyjson.com'

  Scenario Outline: Validate Multiple User Carts
    Given path '/carts/user', <userId>
    When method get
    Then status 200
    # Capture the carts array
    * def carts = response.carts
    # Only perform 'match each' if the user has 1 or more carts
    * if (carts.length > 0) karate.match("each carts == { id: '#number', products: '#[]', total: '#number', discountedTotal: '#number', userId: <userId>, totalProducts: '#number', totalQuantity: '#number' }")
    * print 'Completed validation for User ID:', <userId>, 'Carts found:', carts.length

    Examples:
      | userId |
      | 1      |
      | 2      |
      | 5      |
