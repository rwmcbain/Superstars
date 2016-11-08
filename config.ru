require 'sinatra/base'

# controllers
require './controllers/application_controller'
require './controllers/superstar_controller'

# models
require './models/superstar'


map('/') { run ApplicationController }
map('/api/superstars') { run SuperstarController }


# life is good?
# before/after filters 

before '/*' do
	puts "Route Log:"
	puts request.host
	puts request.params
	puts request.path
	# puts request.body
end

after '/*' do
	puts "Completed Route Log:"
	puts response.body
	puts response.status
end
