class User < ActiveRecord::Base
  attr_accessible :email_address, :password, :password_confirmation
  has_secure_password
  before_save :set_first_user_as_event_organizer

  public
  def email_confirmed?
    self.email_confirmed
  end

  private
  def set_first_user_as_event_organizer
    self.privilege_level = "event_organizer" unless User.count > 0
  end
end
