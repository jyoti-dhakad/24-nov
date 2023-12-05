class AddColumnsToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :start_time, :string
    
  end
end
