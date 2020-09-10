class Post < ApplicationRecord
  before_validation :set_less_latlng

  validates :name, presence: true, length: { maximum: 30 }
  validates :latitude, presence: true
  validates :longitude, presence: true

  belongs_to :user
  
  scope :recent, -> { order(created_at: :desc) }
  
  private
    def set_less_latlng
      self.latitude = '34.695453' if latitude.blank?
      self.longitude = '135.196289' if longitude.blank?
    end
end
