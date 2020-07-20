class BookingsController < ApplicationController

  def new
    @booking = Booking.new(:flight_id => params[:flight])
    @flight = Flight.find(params[:flight])
    params[:passengers].to_i.times {@booking.passengers.build}
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to booking_path(@booking), notice: 'Booking was successfully created.' 
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @date = @booking.flight.date
    @names = @booking.passengers.all.map {|p| p.name}
    @from_airport = @booking.flight.from_airport.code
    @to_airport = @booking.flight.to_airport.code
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, 
           passengers_attributes: [:name, :email])
  end
  
end
