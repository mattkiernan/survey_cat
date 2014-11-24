class CreateMultiChoiceStyles < ActiveRecord::Migration
  def change
    create_table :multi_choice_styles do |t|
      t.string :body, null: false

      t.timestamps
    end
  end
end
