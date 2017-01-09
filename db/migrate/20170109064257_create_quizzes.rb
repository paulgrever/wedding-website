class CreateQuizzes < ActiveRecord::Migration[5.0]
  def change
    create_table :quizzes do |t|
      t.string :name
      t.text :message
      t.integer :score

      t.timestamps
    end
  end
end
