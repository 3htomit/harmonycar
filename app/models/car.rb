class Car < ApplicationRecord
  belongs_to :user
  belongs_to :specification
  has_many :alerts
  has_many :documents
end
