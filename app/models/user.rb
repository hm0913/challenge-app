class User < ApplicationRecord
  has_secure_password validations: true
  with_options presence: true do
    validates :name
    validates :email
  end
  validates :email, uniqueness: true
  has_many :results
end
