class Attendee < ActiveRecord::Base
  attr_accessible :birth_date, :email, :first_name, :last_name, :user_id

  has_many :registrations
  has_many :events, through: :registrations
  # has_many :checkins
  # has_many :events, through: :checkins
  # belongs_to :user
end
