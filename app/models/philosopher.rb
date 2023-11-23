class Philosopher < ApplicationRecord
  belongs_to :user
  validates :age, numericality: { greater_than: 0 }
  validates :location, :bio, :price_per_hour, :preferred_topic, :philosophical_focus, :dress_code, :nationality, :communication_style, presence: true
  has_many :dinners
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  before_save :sanitize_address

  private

  def sanitize_address
    self.location = location.strip
    # self.address = address.gsub(/[^0-9A-Za-z]/, '')
  end
end
