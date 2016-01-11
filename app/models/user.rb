class User < ActiveRecord::Base
  attr_accessor :password

  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, confirmation: true
end
