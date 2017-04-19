class AddCommentToGuests < ActiveRecord::Migration[5.0]
  def change
    add_column :guests, :comment, :string
  end
end
