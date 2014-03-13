Given(/^no user accounts exist$/) do
  User.count.should == 0
end

When(/^I submit a new user account request$/) do
  visit(new_user_registration_path)
  fill_in('user_email', with: "new.user@example.com")
  fill_in('user_password', with: "correct horse battery staple")
  fill_in('user_password_confirmation', with: "correct horse battery staple")
  click_button('Sign up')
end

Then(/^a new user account should be created$/) do
  @user = User.find_by_email("new.user@example.com")
end

Then(/^the user account role should be "(.*?)"$/) do |role|
  @user.role?(role).should be true
end

Then(/^the user account should( not)? be confirmed$/) do |negative|
  if negative
    @user.confirmed?.should be false
  else
    @user.confirmed?.should be true
  end
end

When(/^I confirm my email address$/) do
  step "I should receive 1 email"
  @confirmation_email = open_email(current_email_address)
  @confirmation_email.should deliver_to(current_email_address)
  @confirmation_email.should have_subject("Confirmation instructions")
  visit_in_email("Confirm my account")
  @user = User.find_by_email(current_email_address)
end

Given(/^an (.*) user account exists$/) do |role|
  FactoryGirl.create(:"user_#{role.downcase.tr(' ', '_')}")
end

Given(/^I am signed in as an? (.*)$/) do |role|
  @user = FactoryGirl.create(:"user_#{role.downcase.tr(' ', '_')}")
  @user.confirm! # ensure that the user is confirmed and allowed to sign in
  visit(new_user_session_path)
  fill_in('user_email', with: @user.email)
  fill_in('user_password', with: @user.password)
  click_button('Sign in')
end