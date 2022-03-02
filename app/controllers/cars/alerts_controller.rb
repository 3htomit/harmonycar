class Cars::AlertsController < ApplicationController
  def index
    # @alert_categories = AlertCategory.all

    @car = Car.find(params[:car_id])
    @alerts = @car.alerts
  end

  def edit
    @alert = Alert.find(params[:id])
  end

  def update
    @alert = Alert.find(params[:id])
    @alert.update(alert_params)

    redirect_to car_alerts_path(@alert.car)
  end

  private

  def alert_params
    params.require(:alert).permit(:completed_at, :completed)
  end
end
