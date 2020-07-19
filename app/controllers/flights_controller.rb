class FlightsController < ApplicationController

  def index
    @airports = Airport.all
    @from_airport_options = Airport.all.map{ |a| [a.code, a.id]}
    @to_airport_options = @from_airport_options
  end

  def new
  end
end
