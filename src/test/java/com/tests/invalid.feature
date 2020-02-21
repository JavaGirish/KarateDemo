Feature: greeting end-point

Background:
* url 'http://localhost:3030'

Scenario: check response status

    Given path '/services'
    And param $limit = 1
    When method get
    Then status 200
    #And match response contains { id: '1', name: 'Geek Squad Services',createdAt: '2016-11-17T17:56:35.881Z', updatedAt: '2016-11-17T17:56:35.881Z' }
    
    
Scenario: get id status

Given path '/products/43900'
When request {id: '43900'}
And method get
Then status 200

Scenario: check response text

Given path '/products/43900'
When request {id: '43900'}
And method get
Then status 200
And match response contains { id: 43900, name: 'Duracell - AAA Batteries (4-Pack)' }
* def bob = response
* print 'bob:', bob


    