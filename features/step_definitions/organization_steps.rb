Given(/^an organization does not exist$/) do
  Organization.count.should == 0
end

When(/^I submit a new organization request$/) do
  visit(new_organization_path)
  fill_in('organization_name', with: "Drexel DragonLAN")
  fill_in('organization_email', with: "staff@drexeldragonlan.org")
  click_button('Create Organization')
end

Then(/^an organization should be created$/) do
  @organization = Organization.first
end

Then(/^(\d+) organizations? should exist$/) do |number|
  Organization.count.should == number.to_i
end

Given(/^an organization has been created$/) do
  @organization = FactoryGirl.create(:organization)
end

When(/^I access the new organization page$/) do
  visit(new_organization_path)
end

When(/^I edit some information about my organization$/) do
  visit(edit_organization_path)
  fill_in('organization_name', with: "Temple Gaming")
  click_button('Update Organization')
end

Then(/^I should see my changes on the organization page$/) do
  page.should have_content "Temple Gaming"
end

Then(/^I should be redirected to the organization page$/) do
  page.current_path.should == organization_path
end

Then(/^I should be notified that an organization already exists$/) do
  page.should have_content "An organization already exists."
end
