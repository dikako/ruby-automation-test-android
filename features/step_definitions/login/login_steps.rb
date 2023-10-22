login_page = LoginPage.new

Given(/^user click hamburger menu$/) do
  login_page.tap_hamburger_menu
end

When(/^user click login$/) do
  login_page.tap_login_menu
end

And(/^user input username "([^"]*)"$/) do |username|
  login_page.input_username(ENV[username])
end

And(/^user input password "([^"]*)"$/) do |password|
  login_page.input_password(ENV[password])
end

And(/^user click login button$/) do
  login_page.tap_login_button
end

Then(/^user see product page$/) do
  login_page.product_page?
end