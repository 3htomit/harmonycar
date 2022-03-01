class Alert < ApplicationRecord
  belongs_to :car
  belongs_to :alert_category
end
