When(/^I submit an attendee registration request for the event$/) do
  visit(new_event_attendee_path(@event))
  pending "Needs more steps"
end

Then(/^the system should save a new attendee for the event$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the new attendee should be sent an email confirming they have been registered as an attendee$/) do
  pending # express the regexp above with the code you wish you had
end
