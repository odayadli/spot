class Service < ApplicationRecord
  geocoded_by :service_address
  after_validation :geocode, if: :will_save_change_to_service_address?
  belongs_to :category
  has_many :bookings
  has_many :reviews
  has_one_attached :profile_pic
  has_many_attached :photo
  belongs_to :trainer, class_name: 'User', foreign_key: 'user_id'
end
