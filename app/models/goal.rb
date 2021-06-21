class Goal < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :deadline
    validates :count
    validates :pass
    validates :fail
  end

  belongs_to :user
  has_many :results, dependent: :destroy
end