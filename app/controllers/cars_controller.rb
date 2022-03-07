class CarsController < ApplicationController
  before_action :all_specs, only: [:new, :create]
  before_action :find_car, only: [:show, :update, :destroy]

  def index
    @cars = Car.all
  end

  def show
  end

  def update
    @car.update(car_params)

    redirect_to car_path(@car)
  end

  def new
    # @specifications = Specification.all
    @car = Car.new(car_params)
    @alert1 = @car.alerts.build
    @alert2 = @car.alerts.build

    @user = current_user

    if params[:query].present?
      @specifications = @specifications.where('make ILIKE ?', "%#{params[:query]}%").or(@specifications.where('model ILIKE ?', "%#{params[:query]}%")).or(@specifications.where('engine ILIKE ?', "%#{params[:query]}%"))
    end

    respond_to do |format|
      format.html
      format.text { render partial: 'components/cars/list', local: { specifications: @specifications, car: @car, alert1: @alert1, alert2: @alert2 }, formats: [:html] }
    end
  end

  def create

    @car = Car.new(car_params)
    @car.user = current_user
    @car.specification = Specification.find(params[:spec_id])
    @alert_categories = AlertCategory.all
    # Alerts creation
    @due_date_ct = Date.strptime(params[:date_ct] , '%Y-%m-%d')+2.years
    @due_date_et = Date.strptime(params[:date_et], '%Y-%m-%d')+1.year
    # @redalerts = car.alerts.map { |alert| alert.due_date <= Date.today }
    # @yellowalerts = car.alerts.map { |alert| alert.due_date <= Date.today+alert.alert_category.max_weeks.week}

    Alert.create(alert_category_id: @alert_categories.first[:id], car: @car, due_date: @due_date_ct, completed: false, completed_at: params[:date_ct] )
    Alert.create(alert_category_id: @alert_categories.second[:id], car: @car, due_date: @due_date_et, completed: false, completed_at: params[:date_et] )
    Alert.create(alert_category_id: @alert_categories.third[:id], car: @car, due_date: nil, completed: false, completed_at: nil )
    Alert.create(alert_category_id: @alert_categories.fourth[:id], car: @car, due_date: nil, completed: false, completed_at: nil )
    if @car.save
      redirect_to cars_path, notice: 'Car has been added.'

    else
      render :new
    end
  end

  def destroy
    @car.destroy
    redirect_to cars_path
  end

  private

  def find_car
    @car = Car.find(params[:id])
  end

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
