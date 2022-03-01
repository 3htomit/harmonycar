class CarsController < ApplicationController

  def index
    @user = current_user
    @cars_user = []

    Car.all.each do |car|
      @cars_user << car if car.user_id == @user.id
    end
  end

end
