require "factory_girl"

FactoryGirl.define do
  factory :user_event_organizer, class: User do
    email_address "ariel.kirkwood+LANcenter@gmail.com"
    password "omgitsasecret"
    privilege_level "event_organizer"
  end
end
