class Philosopher < ApplicationRecord
  belongs_to :user
  validates :age, numericality: { greater_than: 0 }
  validates :location, :bio, :price_per_hour, :preferred_topic, :philosophical_focus, :dress_code, :language, :communication_style, presence: true
  has_many :dinners
end
