class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
  end

  def new
    @car = Car.new
    render :new
  end

  def edit
  end

  def create
    @car = Car.new(car_params)
    creation_message = "#{@car.year} #{@car.make} #{@car.model} created"
    if @car.save
      redirect_to cars_path, notice: creation_message
    else
      render :new
    end
  end

  private

  def car_params
    params.require(:car).permit([:year, :make, :model, :price])
  end
end
