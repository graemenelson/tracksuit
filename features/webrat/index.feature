Feature: Basic index page

  Scenario:  When I visit the home page, I should be greeted!
    When I visit "/"
    Then I should be welcomed with "Hello there!"
    
