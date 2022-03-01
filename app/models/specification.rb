class Specification < ApplicationRecord
  has_many :cars
  # validates :critair, inclusion: { in: %w(1 2 3 4 5),
  #                                  message: "%{value} is not a valid number"}
  has_one_attached :photo
end
