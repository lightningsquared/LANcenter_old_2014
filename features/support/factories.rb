require "factory_girl"

FactoryGirl.define do
  factory :user do |f|
    f.email_address "ariel.kirkwood@gmail.com"
    f.password "omgitsasecret"
    f.privilege_level "event_organizer"
  end
end
