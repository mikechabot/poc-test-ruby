Given(/^the application is started$/) do
  # Wait for the DOM to load
  sleep(3)
end

When(/^I enter valid credentials into the login form$/) do
  enterValidCredentials
end

When(/^I point the device to a valid server$/) do
  pointToValidServer
end

When(/^tap the login button$/) do
  tapLogin
end

Then(/^the sync should complete successfully$/) do
  assertSyncCompletion
end

Given(/^I am logged in to the application$/) do
  enterValidCredentials
  pointToValidServer
  tapLogin
  assertSyncCompletion
end

When(/^I tap the logout button$/) do
  tapLogout
end

Then(/^I should be logged out$/) do
  assertLogoutSuccess
end