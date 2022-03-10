class Cars::AlertsController < ApplicationController
  def index
    # @alert_categories = AlertCategory.all

    @car = Car.find(params[:car_id])
    @alerts = @car.alerts
    @alerts = @alerts.order(due_date: :asc)
    @red_alerts = Array.new
    @yellow_alerts = Array.new
    @green_alerts = Array.new
  end

  def edit
    @alert = Alert.find(params[:id])
  end

  def update
    # byebug
    @alert = Alert.find(params[:id])
    @alert.update(alert_params)
    @alert.completed_at = Time.zone.parse(params[:completed_at])
    @alert.save
    if @alert.alert_category.name == "Vérification des pneus"
      @alert.due_date = @alert.completed_at + 2.weeks
    elsif @alert.alert_category.name == "Vérification des niveaux"
      @alert.due_date = @alert.completed_at + 4.weeks
    elsif @alert.alert_category.name == "Entretien"
      @alert.due_date = @alert.completed_at + 1.year
    elsif @alert.alert_category.name == "Contrôle technique"
      @alert.due_date = @alert.completed_at + 2.years
    end

    @alert.save
    redirect_to car_alerts_path(@alert.car)
  end

  private

  def alert_params
    params.require(:alert).permit(:completed_at, :completed)
  end
end
