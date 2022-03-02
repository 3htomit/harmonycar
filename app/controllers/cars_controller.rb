class CarsController < ApplicationController

  before_action :all_specs, only: [:new, :create]

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

    # @specifications = Specification.all
    @car = Car.new(car_params)
    @alert1 = @car.alerts.build
    @alert2 = @car.alerts.build

    @user = current_user

    if params[:query].present?
      @specifications = @specifications.where('make ILIKE ?', "%#{params[:query]}%")
    end

    respond_to do |format|
      format.html
      format.text { render partial: 'components/cars/list', local: { specifications: @specifications, car: @car, alert1: @alert1, alert2: @alert2 }, formats: [:html] }
    end

    # raise
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    @car.specification = Specification.find(params[:spec_id])

    # Alert.create()
    # Alert.create()
    # Alert.create()
    # Alert.create()

    if @car.save
      redirect_to cars_path, notice: 'Car has been added.'
    else
      render :new
    end
  end

  private

  def car_params
    return {} unless params.has_key?(:car)
    params.require(:car).permit(:number_plate, :mileage)
  end


  def alert_params
    params.require(:alert).permit(:completed_at)
  end

  def all_specs
    @specifications = Specification.all
  end
end
