class Expense < ApplicationRecord
  belongs_to :trip

  validates_presence_of :expense, :cost
end
