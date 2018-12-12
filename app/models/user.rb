class User < ApplicationRecord

  has_secure_password
  validates :name, presence: true, uniqueness: true, length: {minimum: 3}
  has_many :documents
end
