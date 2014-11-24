class CreateMultiChoiceOptions < ActiveRecord::Migration
  def change
    create_table :multi_choice_options do |t|
      t.string :body, null: false
      t.integer :multi_choice_style_id, null: false

      t.timestamps
    end
  end
end
