class Pet < ApplicationRecord
  belongs_to :breed

  has_many :bookings
  has_many :renters, through: :bookings

  has_many :reviews
  has_many :humen, through: :reviews

  def full_description
    "My name is #{name}, I am #{age} months old, I am based in #{location}, and I #{description}"
  end 

  def self.search(search)
    if search
        pet = Pet.find_by(name:search)
        if pet
            self.where(name: pet)
        else
            Pet.all
        end
    else
        Pet.all
    end
  end
end