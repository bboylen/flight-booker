# flight-booker

App that allows user to book a one way flight 

Project from the Rails curriculum of The Odin Project (https://www.theodinproject.com/courses/ruby-on-rails/lessons/building-advanced-forms) 

## Features

- Allows user to search for flights, choosing the origin airport, destination airport, date, and # of passengers
  - Options are prepopulated by a function that creates hundreds of random flights
 - User then creates accounts for every passenger
 - Once flight is booked, all passengers are sent an email 

## Takeaways

The purpose of this project was to work with advanced, nested forms. It was a bit tricky to get the forms to present and submit the correct information to the controller. Modifying and displaying dates was also a bit tricky. 

Implementing the email feature was not too challenging. The letter_opener gem and rails server output made it easy to check that emails were being sent to the correct email with the correct content.  
