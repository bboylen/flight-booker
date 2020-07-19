class FlightsController < ApplicationController

  def index
    @airports = Airport.all
    @from_airport_options = Airport.all.map{ |a| [a.code, a.id]}
    @to_airport_options = @from_airport_options

    if params[:passengers] && params[:from_airport_id] &&
       params[:to_airport_id] && params[:date]
      @flights = Flight.where("date = ?", params[:date]).
                        where("from_airport_id = ?",params[:from_airport_id]).
                        where("to_airport_id = ?",params[:to_airport_id]).
                        where("open_seats > ?",params[:passengers])
      @passengers = params[:passengers]
    end
  end

end
