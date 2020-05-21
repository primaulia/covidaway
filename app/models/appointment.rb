class Appointment < ApplicationRecord
  belongs_to :citizen
  belongs_to :clinic
end
