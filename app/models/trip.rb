class Trip < ApplicationRecord
  has_many :events
  has_many :expenses
  has_many :packinglists
  has_many :eventitems, through: :events
  has_many :packingitems, through: :packinglists
  belongs_to :user

  validates_presence_of :title, :country, :start_date
  validates_uniqueness_of :start_date
end
