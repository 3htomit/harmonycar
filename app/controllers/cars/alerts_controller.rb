class Cars::AlertsController < ApplicationController
  def index
    @alert_categories = AlertCategory.all
  end
end
