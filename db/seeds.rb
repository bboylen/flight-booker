Airport.delete_all
Flight.delete_all
airport_code = ["ATL", "LAX", "ORD","DFW","DEN","JFK","SFO"]
airport_code.each do |airport|
  Airport.create(:code => airport )
end
hours = 1..12
minutes = 1..60
airports = Airport.all
10.times do |blarg|
  airport_ids = []
  airports.each {|airport| airport_ids << airport.id}
  id_1 = airport_ids.sample
  airport_ids.delete(id_1)
  id_2 = airport_ids.sample
  Flight.create(start: Time.at(rand(Time.now.to_i..Time.parse('2021-7-11 12:00:00').to_i)), 
                duration: "#{rand(hours)} h #{rand(minutes)} m",
                from_airport_id: id_1,
                to_airport_id: id_2,
                open_seats: rand(0..20)
  )
end