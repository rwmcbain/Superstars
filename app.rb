class ApplicationController < Sinatra::Base

	require 'bundler'
	Bundler.require

	set :views, File.dirname(__FILE__) + '/views'
	set :public, File.dirname(__FILE__) + '/public'

	# enabling sessions
	# also connect to our database
	enable :sessions, :logging

end