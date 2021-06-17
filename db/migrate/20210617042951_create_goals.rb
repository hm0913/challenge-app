class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.string :name, null: false
      t.date :deadline, null: false
      t.string :pass, null: false
      t.string :fail, null: false
      t.integer :count, null: false

      t.timestamps
    end
  end
end
