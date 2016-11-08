class SuperstarController < ApplicationController

	get '/' do
		Superstar.all.to_json
	end

	get '/:id' do	
		# get by id
		@id = params[:id]
		Superstar.find(@id).to_json
	end

	post '/' do
		# create
		@name = params[:name]
		@talent = params[:talent]
		@outfit = params[:outfit]

		@model = Superstar.new
		@model.name = @name
		@model.talent = @talent
		@model.outfit = @outfit
		@model.save

		# place a breakpoint in ruby!
		# binding.pry
		# ^ the code stops here
		@model.to_json
	end

	patch '/:id' do
		# update
		@id = params[:id]
		@name = params[:name]
		@talent = params[:talent]
		@outfit = params[:outfit]
		@model = Superstar.find(@id)
		@model = Superstar.new
		@model.name = @name
		@model.talent = @talent
		@model.outfit = @outfit
		@model.save
		@model.to_json

	end

	delete '/:id' do
		# delete
		@id = params[:id]
		@model = Superstar.find(@id)
		@model.destroy
		{ :message => "Item of id " + @id + " was removed."}.to_json
	end





	# get '/fabulous' do
	# 	# teach you how to rule the database
	# 	# activerecord
	# 	@christopher = Superstar.new
	# 	@christopher.talent = "Socialite"
	# 	@christopher.name = "Christopher Awesomesauce"
	# 	@christopher.outfit = "blue sweater"
	# 	@christopher.save
	# 	@christopher.to_json

	# 	#crud
	# 	# Create, Read, Update, Delete
	# end

end

