class Car < ApplicationRecord
  belongs_to :user
  belongs_to :specification

  has_many :alerts,    dependent: :destroy
  has_many :documents, dependent: :destroy

  accepts_nested_attributes_for :alerts

  def redcount
    alerts.select do |alert|
      alert.due_date.present? && alert.due_date <= Date.today
    end
  end

  def yellowcount
    alerts.select do |alert|
      alert.due_date.present? && alert.due_date > Date.today && alert.due_date <= (Date.today + alert.alert_category.max_weeks.week)
    end
  end
end
