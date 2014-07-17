Feature: Valid logins

  Ensure valid users are able to login/logout

  Background: Start the application
    Given the application is started
  
  @login @loginTest
  Scenario: Successful login
	When I enter valid credentials into the login form
	 And I point the device to a valid server
	 And tap the login button
	Then the sync should complete successfully

  @logout @loginTest
  Scenario: Successful logout with valid credentials
    Given I am logged in to the application
     When I tap the logout button
	 Then I should be logged out
