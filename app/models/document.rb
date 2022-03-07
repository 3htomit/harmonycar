class Document < ApplicationRecord
  belongs_to :car
  has_one_attached :document
end
