class User < ActiveRecord::Base
  attr_accessible :email_address, :password, :password_confirmation
  has_secure_password
end
