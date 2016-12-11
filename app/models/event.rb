class Event < ApplicationRecord
  has_many :eventitems
  belongs_to :trip

  validates_presence_of :title, :date

  def self.upcoming
    current_date = Date.current
    where("start_date >= ?", current_date)
  end

  def self.previous
    current_date = Date.current
    where("start_date < ?", current_date)
  end

end
