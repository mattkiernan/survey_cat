class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :survey_id, null: false
      t.string :style_type, null: false
      t.integer :style_id, null: false

      t.timestamps null: false
    end

    add_index :questions, :survey_id
    add_index :questions, :style_id
  end
end
