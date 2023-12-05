class User < ApplicationRecord
    has_many :bikes, through: :bookings
    has_many :bookings

    validates :username, :email, :contact, presence:true
    validates :dob, :address, :gender,presence:true
end
