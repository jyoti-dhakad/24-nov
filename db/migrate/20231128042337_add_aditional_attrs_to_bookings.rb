class AddAditionalAttrsToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :total_amount, :string
    add_column :bookings, :date, :string
  end
end
