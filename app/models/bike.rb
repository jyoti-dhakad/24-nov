class Bike < ApplicationRecord
    has_many :users, through: :bookings
    has_many :bookings

    validates :name, :price, :color, presence:true
    validates :model_no, presence:true, uniqueness:true
    validates :lighting, presence:true

    
end
