Given(/^I am on the "(.*?)"$/) do |website|
  @browser.goto website
end


When(/^I complete my valid email field$/) do
  @login_page.username = 'validaccount'
end


And(/^I complete my password field$/) do
  @login_page.password = 'validpassword'
end


And(/^I click on my sign in button$/) do
  @login_page.login
end


Then(/^I should see create link$/) do
  SuccessMessage = @browser.link(:id => 'repo-create-cta')
  SuccessMessageAgin = @browser.link(:id => 'repositories-dropdown-trigger')
  'Thank you for successful login unto your Bitbucket account'.eql? SuccessMessage.text
  'Thank you for successful login unto your Bitbucket account'.eql? SuccessMessageAgin.text
end





And(/^I complete my invalid password field$/) do
  @login_page.password = 'invalidpassword'
end


Then(/^I fail to login$/) do
  Failedmessage = @browser.link(:class => 'forgot-password')
  'Verified that user is not able to login with invalid password'.eql? Failedmessage.text
end




When(/^I complete my invalid email field$/) do
  @login_page.username = 'invalidaccount'
end


And(/^I complete my valid password field$/) do
  @login_page.password = 'validpassword'
end


