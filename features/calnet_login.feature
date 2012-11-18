Feature: calnet login

  As an administrator
  So that I can verify the identity of the resident making requests
  I want to have students login before submitting a request

Scenario: when not logged in, user can't access site
  Given PENDING
  Given I am not logged in
  When I go to the home page
  Then I should not be on the home page
  And I should not be logged in

Scenario: site is accessible after logging in
  Given PENDING
  Given I log in
  When I go to the home page
  Then I should be on the home page
  And I should be logged in
