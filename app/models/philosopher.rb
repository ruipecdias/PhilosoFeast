class Philosopher < ApplicationRecord
  belongs_to :user
  validates :age, numericality: { greater_than: 0 }
  validates :location, :bio, :price_per_hour, :preferred_topic, :philosophical_focus, :dress_code, :language, :communication_style, presence: true
  has_many :dinners
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
