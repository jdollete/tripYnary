class Packinglist < ApplicationRecord
  has_many :packingitems
  belongs_to :trips
end
