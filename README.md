# Weather Checker API

This is a simple weather checker backend application sends a weather data response given an input of a persons coordinates.

## Install Instructions
1. Clone this repository to you local machine.
2. Once cloned, navigate to the base folder of this repository.
3. Run bundle install in the terminal to install required gems.
4. Run rails db:setup to set up the database.
5. Create a .env file in the root of the project and assign a variable API_KEY to an API key you can obtain from OpenWeather.
    * Instructions on setting up .env file can be found [here](https://github.com/bkeepers/dotenv)
    * API key can be obtained from [here](https://openweathermap.org/api)
6. Run rails s to start the rails server.

Note: The frontend software must be downloaded and running as well to see a user interface. See the frontend project [here](https://github.com/brandonbrown4792/weather-checker).