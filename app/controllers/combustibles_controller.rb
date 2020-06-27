class CombustiblesController < ApplicationController
  def index
    @combustible = Combustible.all
  end

  def new
    @car = Car.find(params[:car_id])
    @combustible = Combustible.new
  end

  def create
    @car = Car.find(params[:car_id])
    @combustible = Combustible.new(combus_params)
    @kilometers = @combustible.kilometers - @car.kilometer
    @car.kilometer += @combustible.kilometers
    @car.save
    @combustible.car_id = params[:car_id]
    @combustible.date = Time.now.strftime("%I:%M - %m/%d/%Y")
    @combustible.liter_price = @combustible.total_price / @combustible.liters
    @combustible.save
    redirect_to root_path
  end

  private

  def combus_params
    params.require(:combustible).permit(:liters, :total_price, :kilometers)
  end

end
