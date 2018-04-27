# Single-page application with API challenge

## Start Tier

Take your Thermostat project. Make it servable from a Ruby server.

#### Success conditions

- When I run my Sinatra server using `ruby app.rb` and I visit http://localhost:9000/ (the root path), I should see my working Thermostat.

## Intermediate Tier

Store some information from the Thermostat in a database.

#### Success conditions

- When I visit my Thermostat, I want a form at the top of the page where I fill in my name.
- When I submit the form, I want my name to be displayed on the page "Sam's Thermostat". _The page must not refresh between me submitting the form and me seeing the name change._
- When I refresh the page, I want my name to still be displayed. It has to come from the database, via the API.
- I want to click on a button and see a history of the last ten temperatures I clicked.

#### Hints

##### Saving data from the Thermostat frontend to the database via a Ruby API

I've built a POST route, `/api/users/` that should receive JSON from the Thermostat name form. It should use Ruby to save to the database, then it should return: 

1. the ID of the created record
2. the appropriate HTTP status code (the one for OK)

I've also built a POST route, `/api/temperatures/` shat should receive JSON from the Thermostat. It should use Ruby to save to the database, then it should return:

1. the ID of the created record
2. the appropriate HTTP status code (the one for OK)

##### Retrieving data from the Ruby API to display on the Thermostat frontend

I've built a GET route, `/api/users/current` that should receive an AJAX call from the Thermostat page when it loads. It should use Ruby to get the user from the database, then it should return the user as JSON. The Thermostat page should then display the user.

I've built a GET route, `/api/temperatures/` that should receive an AJAX call from the Thermostat page when I click on the 'history' button. It should use Ruby to get the last ten temperatures from the database, then it should return them as JSON. The Thermostat page should then display these temperatures in a list.

## God Tier

Log in and log out using the API.

#### Success conditions

- When I visit the Thermostat, I want the name form I asked you to make before to have two fields: email and password.
- When I fill them out with an email and password for the first time, it signs me up.
- When I fill them out with an email and password and I already exist in the database, it logs me in.
- I want to log out too.

#### Hints

I haven't made any routes for this. But you want to look into API tokens for authentication. Most articles on this will be about Node, not Ruby!

