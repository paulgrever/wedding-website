class AddGuestCountToGuests < ActiveRecord::Migration[5.0]
  def change
    add_column :guests, :count, :Integer
  end
end
