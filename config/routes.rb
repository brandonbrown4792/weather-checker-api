Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/get-weather', to: 'weather#get_weather'
    end
  end
end
