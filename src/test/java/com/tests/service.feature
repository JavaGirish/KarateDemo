Feature: greeting end-point

Background:
* url 'http://localhost:3030'

Scenario: get default greeting

    Given path '/services'
    And param $limit = 1
    When method get
    Then status 200
    And match response contains { id: 1, name: 'Geek Squad Services',createdAt: '2016-11-17T17:56:35.881Z', updatedAt: '2016-11-17T17:56:35.881Z' }
    