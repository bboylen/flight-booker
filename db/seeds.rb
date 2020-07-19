Airport.delete_all
Flight.delete_all
airport_code = ["ATL", "LAX", "ORD","DFW","DEN","JFK","SFO"]
airport_code.each do |airport|
  Airport.create(:code => airport )
end
hours = 1..12
minutes = 1..60
airports = Airport.all
3000.times do |blarg|
  airport_ids = []
  airports.each {|airport| airport_ids << airport.id}
  id_1 = airport_ids.sample
  airport_ids.delete(id_1)
  id_2 = airport_ids.sample
  date_time = Time.at(rand(Time.now.to_i..Time.parse('2020-11-11 12:00:00').to_i))
  Flight.create(start: date_time,
                date:  date_time.to_date,
                duration: "#{rand(hours)} h #{rand(minutes)} m",
                from_airport_id: id_1,
                to_airport_id: id_2,
                open_seats: rand(0..20)
  )
end