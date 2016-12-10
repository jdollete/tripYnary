class User < ApplicationRecord
  has_secure_password

  has_many :trips

  validates_presence_of :first_name, :last_name, :email
  validates_uniqueness_of :email
end
