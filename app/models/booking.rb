class Booking < ApplicationRecord
    belongs_to :user
    belongs_to :bike

    validates :booking_process, :payment_option, presence:true
    validates :security, :rating, presence:true
    validates :status, :total_amount, :date, presence:true
end
