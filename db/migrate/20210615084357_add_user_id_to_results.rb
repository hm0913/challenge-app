class AddUserIdToResults < ActiveRecord::Migration[5.2]
  def change
    add_column :results, :user_id, :bigint
  end
end
