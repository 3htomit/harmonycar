class CarsController < ApplicationController

  def index
    @cars_user = []

    Car.all.each do |car|
      @cars_user << car if car.user_id == current_user.id
    end
  end

  def show
    @car = Car.find(params[:id])
  end
end
