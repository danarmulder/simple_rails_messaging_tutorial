class User < ActiveRecord::Base
  validates :first_name, :email,  presence: true
  validates :email, uniqueness: true
  validates :password, length: { minimum: 4 }
  validates :first_name, length: { minimum: 2 }

  has_secure_password

  has_many :conversations, :foreign_key => :sender_id
end
