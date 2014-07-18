Feature: Invalid logins

  Test behavior of invalid credential logins, invalid server addresses, and locked accounts

  Background: The application is started
    Given the application is started

  @invalid
  Scenario Outline: Test behavior of invalid credentials and server addresses
    When I enter "<Type>" credentials into the login form
    And I point the device to "<Server>"
    Then tap the login button
    Then the login should fail with the message "<Message>"
    Scenarios:
      | Type    | Server                      | Message                              |
      | invalid | https://dev.healthwyse.com  | Invalid user name or password        |
      | invalid | https://www.google.com      | Server may be invalid or unreachable |
      | valid   | https://www.google.com      | Server may be invalid or unreachable |
      | invalid | https://abc.123.def.456     | Server may be invalid or unreachable |
      | valid   | https://abc.123.def.456     | Server may be invalid or unreachable |
      | locked  | https://dev.healthwyse.com  | Your account is locked               |