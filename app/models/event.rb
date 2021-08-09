class Event < ApplicationRecord
  belongs_to :user
  has_many :attendances
  has_many :users, through: :attendance

  validates :start_date,
  presence: true
validates :duration,
  presence: true
validates :title,
  presence: true,
  length: { in: 5..140 }
validates :description,
  presence: true,
  length: { in: 20..1000 }
validates :price,
  presence: true,
  length: { in: 3..1000 }
validates :location,
  presence: true

validate :start_date_future
def start_date_future
errors.add(:start_date, 'This event must be in the future ')unless start_date > DateTime.now
end

validate :duration_length
def duration_length
  errors.add(:duration, 'This event must be a multiple of 5 ')unless duration%5 ==0 && duration > 0
end

end
