class Trip < ApplicationRecord
  has_many :events
  has_many :expenses
  has_many :packinglists 
end
