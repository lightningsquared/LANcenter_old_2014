Given(/^an organization does not exist$/) do
  Organization.count.should == 0
end

When(/^I submit an organization creation request$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^an organization should be created$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^an organization has been created$/) do
  FactoryGirl.create(:organization)
end

When(/^I submit some information about my organization$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be told that an organization already exists$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I edit some information about my organization$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see my changes on the organization page$/) do
  pending # express the regexp above with the code you wish you had
end