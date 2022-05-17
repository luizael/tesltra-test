Feature: GitRespositoryontroller test

Background: 
    * url 'http://localhost:8080'
    
  Scenario: MATCH TEMPLATE JSON
    Given path '/olduser'
    And param usersNumber = 1
    When method GET
    Then status 200
    And match response ==
      """
      [
	      {
	        "id": "#string",
	        "login": "#string",
	        "html_url": "#string"
	      }
      ]
      """

  Scenario: GIVE ME STATUS 200 AND ONE REGISTER ONLY
     Given path '/olduser'
    And param usersNumber = 1
    When method GET
    Then status 200
    * def id = $..id
    * assert id.length == 1
