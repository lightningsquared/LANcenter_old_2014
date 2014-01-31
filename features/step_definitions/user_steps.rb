Given(/^no user accounts exist$/) do
  User.count.should == 0
end

When(/^I submit a new user account request$/) do
  visit(new_user_path)
  fill_in('user_email_address', :with => "kenneth.szovati@gmail.com")
  fill_in('user_password', :with => "kens_sUpEr_sEcReT_pAsSwOrD")
  fill_in('user_password_confirmation', :with => "kens_sUpEr_sEcReT_pAsSwOrD")
  click_button('Create User')
end

Then(/^a new user account should be created$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^an Event Organizer user account exists$/) do
  @user = FactoryGirl.create(:user_event_organizer)
  User.count.should == 1
end

Then(/^the user account should have Event Organizer privileges$/) do
  @user.privilege_level.should == "event_organizer"
end

When(/^I access any location within LANcenter that is not the new user account page$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be redirected to the user account creation page$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be notified that an event organizer user account must first be created$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I try to delete the user account$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the user account should not be deleted$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be notified that at least one event organizer user account must exist$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^the attendee submits a new user account request$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^the email address in the new user account request matches an email address in the list of attendees from any event$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^the attendee confirms their email address$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the attendee's information should be connected to the attendee's user account$/) do
  pending # express the regexp above with the code you wish you had
end
