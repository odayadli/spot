class Service < ApplicationRecord
  geocoded_by :service_address
  after_validation :geocode, if: :will_save_change_to_service_address?
  belongs_to :category
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
#   has_many :reviews, dependent: :destroy
  has_one_attached :profile_pic
  has_one_attached :photo
  belongs_to :trainer, class_name: 'User', foreign_key: 'user_id'
  include PgSearch::Model
  pg_search_scope :search_by_service_address,
                  against: [:service_address],
                  using: {
                    tsearch: { prefix: true }
                  }
end
