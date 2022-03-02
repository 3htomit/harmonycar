class CarsController < ApplicationController


  def index
  end

  def show
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)

    redirect_to car_path(@car)
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

  private

  def car_params
    params.require(:car).permit(:mileage)
  end
end
