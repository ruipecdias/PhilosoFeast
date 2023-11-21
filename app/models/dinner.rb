class Dinner < ApplicationRecord
  belongs_to :user
  belongs_to :philosopher

  validates :date, presence: true
  validates :lenght, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
