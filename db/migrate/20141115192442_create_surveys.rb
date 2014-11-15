class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name, null: false
      t.string :description
      t.integer :user_id, null: false

      t.timestamps null: false
    end

    add_index :surveys, :user_id
  end
end
