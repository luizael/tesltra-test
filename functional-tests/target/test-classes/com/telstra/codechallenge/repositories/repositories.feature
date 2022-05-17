Feature: GitRespositoryontroller test

  Background: 
    * url 'http://localhost:8080'

  Scenario: MATCH THE TEMPLATE JSON SCHEMA
    Given path '/repositories'
    And param repositoriesNumber = 1
    When method GET
    Then status 200
    And match response ==
      """
      [
       {
           "html_url": "#string",
           "watchers_count": "#string",
           "language": "#string",
           "description": "#string",
           "name": "#string"
       }
      ]
      """

  Scenario: GIVE ME STATUS 200 ONE REGISTER IN REPOSITORIES
    Given path '/repositories'
    And param repositoriesNumber = 1
    When method GET
    Then status 200
    * def html_url = $..html_url
    * assert html_url.length == 1
