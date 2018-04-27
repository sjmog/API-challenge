require 'sinatra'
require 'sinatra/json'

get '/' do
  # Serve the Thermostat page from this route.
end

### BELOW HERE ARE API ROUTES ###
# API routes do not render a view.
# They just return JSON.

post '/api/users' do
  # Create new users via AJAX using this route.
  # Then return JSON like this: json({ userId: @user.id, status: 'OK' })
end

post '/api/temperatures' do
  # Create new temperature records via AJAX using this route.
  # Then return JSON that says "OK, I made the record!" in the conventional way (see above)
end

get '/api/users/current' do
  # This call should be initiated by an AJAX request from the Thermostat.
  # Fetch the current user from the database.
  # Then return the user serialized to JSON.
end

get '/api/temperatures' do
  # This call should be intiated by an AJAX request from the Thermostat.
  # Return last ten temperatures from the database.
  # Serialize them to JSON.
end