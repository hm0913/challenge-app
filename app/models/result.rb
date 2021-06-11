class Result < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :count
    validates :challenge_day
  end
end
