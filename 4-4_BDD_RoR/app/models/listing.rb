class Listing < ApplicationRecord
  after_create :send_welcome_message
  has_many :reservations
  belongs_to :user
  belongs_to :city
  
  validates :available_beds,
    presence: true,
    numericality: { only_integer: true, greater_than: 0 } 

  validates :price,
    presence: true,
    numericality: { only_integer: true, greater_than: 0 } 

  validates :description,
    presence: true,
    length: { minimum: 140 }

  validates :has_wifi,
    presence: true

    def send_welcome_message
      puts "Bienvenue dans l'unvers Airbnb! Votre compte a bien été créé!"
    end
end
