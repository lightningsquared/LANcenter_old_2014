class User < ActiveRecord::Base
  # Define the available roles for a user
  ROLES = ["Event Organizer", "Volunteer", "Attendee"]

  attr_accessible :email, :password, :password_confirmation, :remember_me

  before_save :set_first_user_as_event_organizer

  devise :confirmable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  public
  def role?(role_sym)
    role_sym == self.role
  end

  private
  def set_first_user_as_event_organizer
    self.role = "Event Organizer" unless User.count > 0
  end
end
