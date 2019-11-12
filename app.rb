require('sinatra')
require('sinatra/contrib/all')
require_relative('./controllers/cities_controller.rb')
require_relative('./controllers/countries_controller.rb')
also_reload('./models/*')


get '/' do
  @countries = Country.all
  @cities = City.all
  erb( :index )
end
