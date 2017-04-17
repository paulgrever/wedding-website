class CreateGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :guests do |t|
      t.string :first_name
      t.string :last_name
      t.string :plus_one_first_name
      t.string :plus_one_last_name
      t.boolean :attending_wedding
      t.boolean :attending_meet_and_greet
      t.string :lodging
      t.string :allergies
      t.timestamps
    end
  end
end
