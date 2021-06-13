require 'byebug'
class BidsController < ApplicationController

  def index

  end

  def new
    car_id = params[:car_id]
    @car = Car.find(car_id)
    @bid = Bid.new
  end

  def create
    @bid = Bid.new(bid_params)
    car_id = params[:car_id]
    @car = Car.find(car_id)
    @car.save
    respond_to do |format| 
      if @car.bids<<@bid
        format.html { redirect_to cars_path, notice: "Bid was successfully created." }
        format.json { render :show, status: :created, location: @bid }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bid.errors, status: :unprocessable_entity }
      end
    end

  end

  private
  # Use callbacks to share common setup or constraints between actions.

  def bid_params
    params.require(:bid).permit(:amount)
  end

end
