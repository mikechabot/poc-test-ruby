Feature: Advanced syncing options

  Ensure an end-user is able to successfully sync with advanced 
  options, such as "Update UI Files", "Update Device Db", etc.

  # Due to Issue #514, we need to remove the background block
  # https://github.com/cucumber/cucumber/issues/514

  @multi
  Scenario: Enable all advanced options
    Given the application is started
    And I'm a valid user pointed to a valid server
    When I check these boxes:
      | Update UI Files    | updateUi         |
      | Update Device Db   | updateDeviceDb   |
      | Update Resource Db | updateResourceDb |
      | Update Drug Db     | updateDrugDb     |
    And tap the login button
    Then the sync should complete successfully
    
  @single
  Scenario Outline: Enable advanced syncing options
    Given the application is started
    And I'm a valid user pointed to a valid server
    When I check the box "<Option>" with id "<OptionId>"
    And tap the login button
    Then the sync should complete successfully
    Scenarios: 
      | Option             | OptionId         |
      | Update UI Files    | updateUi         |
      | Update Device Db   | updateDeviceDb   |
      | Update Resource Db | updateResourceDb |
      | Update Drug Db     | updateDrugDb     |