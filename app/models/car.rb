class Car < ApplicationRecord
  belongs_to :user
  belongs_to :specification


  has_many :alerts,    dependent: :destroy
  has_many :documents, dependent: :destroy

  accepts_nested_attributes_for :alerts
end
