class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :survey_id, null: false

      t.timestamps null: false
    end

    add_index :responses, :survey_id
  end
end
