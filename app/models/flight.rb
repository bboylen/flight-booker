class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport",
                       foreign_key: "from_airport_id"
  belongs_to :to_airport, class_name: "Airport",
                       foreign_key: "to_airport_id"

  def date_formatted
    date.strftime("%m/%d/%Y")
  end

  def time_formatted
    start.strftime("%I:%M%p")
  end

end
