class CreateTextStyles < ActiveRecord::Migration
  def change
    create_table :text_styles do |t|
      t.string :body, null: false

      t.timestamps null: false
    end
  end
end
