class SuperstarController < ApplicationController

	get '/' do
		{:message => "all items soon"}.to_json
	end

	get '/fabulous' do
		# teach you how to rule the database
		# activerecord
		@christopher = Superstar.new
		@christopher.talent = "Socialite"
		@christopher.name = "Christopher Awesomesauce"
		@christopher.outfit = "blue sweater"
		@christopher.save
		@christopher.to_json

		#crud
		# Create, Delete, Update, Read
	end

end

