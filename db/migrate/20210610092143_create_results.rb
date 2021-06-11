class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.string :name, null: false
      t.integer :count, null: false

      t.timestamps
    end
  end
end
