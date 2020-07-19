class FlightsController < ApplicationController

  def index
    @airports = Airport.all
    @flight = Flight.new
    @from_airport_options = Airport.all.map{ |a| [a.code, a.id]}
    @to_airport_options = Airport.all.map{ |a| [a.code, a.id]}
    
  end

  def new
  end
end
