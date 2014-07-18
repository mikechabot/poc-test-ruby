When(/^(?:I )?point the device to "(.*?)"$/) do |host|
  server = Server.new(host)
  pointDeviceTo(server)
end

When(/^I enter "(.*?)" credentials into the login form$/) do |type|
  if type.eql? "valid"
    user = User.getValidUser
  elsif type.eql? "invalid"
    user = User.getInvalidUser
  else
    user = User.getLockedUser
  end
  enterCredentials(user)
end

Then(/^the login should fail with the message "(.*?)"$/) do |message|
  assertLoginFailure(message)
end

When(/^I enter locked credentials into the login form$/) do
  user = User.getLockedUser
  enterCredentials(user)
end