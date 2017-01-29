class User < ApplicationRecord
  before_save { self.email = email.downcase }
  has_secure_password
  belongs_to :organisation
end
