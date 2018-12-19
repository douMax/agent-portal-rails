# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  is_admin        :boolean
#  is_sales_admin  :boolean
#  email           :string
#

class User < ApplicationRecord

  has_secure_password

  validates :email, presence: true, uniqueness: true, length: {minimum: 5}
  has_many :documents
  has_and_belongs_to_many :projects
end
