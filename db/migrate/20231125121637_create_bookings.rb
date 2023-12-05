class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.string :booking_process
      t.string :payment_option
      t.string :security
      t.string :rating

      t.timestamps
    end
  end
end
