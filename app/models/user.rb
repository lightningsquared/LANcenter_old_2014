class User < ActiveRecord::Base
  attr_accessible :email_address, :password_digest, :privilege_level
end
