Given(/^no user accounts exist$/) do
  User.count.should == 0
end

When(/^I submit a new user account request$/) do
  visit(new_user_registration_path)
  fill_in('user_email', :with => current_email_address)
  fill_in('user_password', :with => "correct horse battery staple")
  fill_in('user_password_confirmation', :with => "correct horse battery staple")
  click_button('Sign up')
end

Then(/^a new user account should be created$/) do
  User.find_by_email(current_email_address)
end

Then(/^the user account should have Event Organizer privileges$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the user account should( not)? be confirmed$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I confirm my email address$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^an Event Organizer user account exists$/) do
  pending # express the regexp above with the code you wish you had
end