class User < ApplicationRecord
  has_secure_password validations: true
  with_options presence: true do
    validates :name
    validates :email
  end
  validates :email, uniqueness: true
  has_many :results
  has_many :goals

  def self.guest
    find_or_create_by!(email: "test1@com") do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "ゲスト"
    end
  end
end
