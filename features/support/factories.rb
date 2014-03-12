require "factory_girl"

FactoryGirl.define do
  factory :user_event_organizer, class: User do |f|
    f.email "event.organizer@example.com"
    f.password "correct horse battery staple"
    f.role "Event Organizer"
  end
end