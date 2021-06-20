class AddGoalIdToResults < ActiveRecord::Migration[5.2]
  def change
    add_column :results, :goal_id, :bigint
  end
end
