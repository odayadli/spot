class Booking < ApplicationRecord
  belongs_to :trainee, class_name: 'User', foreign_key: 'user_id'
  belongs_to :service
  has_many :reviews, dependent: :destroy
  # validate :end_date_after_start_date
  #
  # private
  # def end_date_after_start_date
  #   return if end_date.blank? || start_date.blank?
  #   errors.add(:end_date, 'must be after the start date') if end_date < start_date
  #   errors.add(:start_date, "can't be before the date of today") if start_date < DateTime.now
  # end
end
