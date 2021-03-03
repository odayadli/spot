class Service < ApplicationRecord
  belongs_to :category
  has_many :bookings
  has_one_attached :profile_pic
  belongs_to :trainer, class_name: 'User', foreign_key: 'user_id'
end
