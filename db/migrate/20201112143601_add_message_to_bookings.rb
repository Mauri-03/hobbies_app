class AddMessageToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :message, :string, default: "pending"
  end
end
