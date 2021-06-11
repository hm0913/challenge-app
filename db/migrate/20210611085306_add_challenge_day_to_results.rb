class AddChallengeDayToResults < ActiveRecord::Migration[5.2]
  def change
    add_column :results, :challenge_day, :date, null: false
  end
end
