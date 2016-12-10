class Eventitem < ApplicationRecord
  belongs_to :event

  validates_presence_of :description
end
