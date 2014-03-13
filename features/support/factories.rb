require "factory_girl"

FactoryGirl.define do
  factory :event do |f|
    f.name "DragonLAN presents NETWORKED.0"
    f.status "planned"
    f.capacity 160
    f.start_time "2014-03-15 12:00:00"
    f.end_time "2014-03-16 00:00:00"
  end

  factory :organization do |f|
    f.name "Drexel DragonLAN"
    f.email "staff@drexeldragonlan.org"
  end

  factory :user_event_organizer, class: User do |f|
    f.email "event.organizer@example.com"
    f.password "correct horse battery staple"
    f.role "Event Organizer"
  end

  factory :user_volunteer, class: User do |f|
    f.email "volunteer@example.com"
    f.password "correct horse battery staple"
    f.role "Volunteer"
  end

  factory :user_attendee, class: User do |f|
    f.email "attendee@example.com"
    f.password "correct horse battery staple"
    f.role "Attendee"
  end
end
