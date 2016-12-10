class Event < ApplicationRecord
  has_many :eventitems
  belongs_to :trip

  validates_presence_of :title, :date
end
