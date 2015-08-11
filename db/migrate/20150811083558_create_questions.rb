class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.text :description
      t.integer :views
      t.datetime :answered_at
      t.integer :selected_answer

      t.timestamps null: false
    end
  end
end
