class Packinglist < ApplicationRecord
  has_many :packingitems
  belongs_to :trip

  validates_presence_of :title
end
