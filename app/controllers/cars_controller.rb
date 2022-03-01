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


  def new
    @specifications = Specification.all

    if params[:query].present?
      @specifications = @specifications.where('make ILIKE ?', "%#{params[:query]}%")
    end

    respond_to do |format|
      format.html
      format.text { render partial: 'components/cars/list', local: { specifications: @specifications }, formats: [:html] }
    end
    @car = Car.new
  end

  def create

  end
end
