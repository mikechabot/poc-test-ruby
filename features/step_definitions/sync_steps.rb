Given(/^I'm a valid user pointed to a valid server$/) do
  user = User.getValidUser
  enterCredentials(user)
  server = Server.getValidServer
  pointDeviceTo(server)
end

When(/^I check the box "(.*?)" with id "(.*?)"$/) do |label, id|
  touchById(id)
end

When(/^I check these boxes:$/) do |table|
  checkBoxes(table)  
end