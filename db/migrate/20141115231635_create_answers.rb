class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :question_id
      t.integer :response_id, null: false
      t.string :body
      t.integer :multi_choice_option_id

      t.timestamps null: false
    end
  end
end
