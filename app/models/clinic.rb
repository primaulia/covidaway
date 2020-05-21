class Clinic < ApplicationRecord
  has_many :appointments
  has_many :citizens, through: :appointments

  validates :address, presence: true
  validates :capacity, numericality: { only_integer: true }
end
