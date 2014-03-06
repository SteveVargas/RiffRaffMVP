require 'sinatra'
require 'sinatra/activerecord'

before do

end


######################
##### Routes #########
######################

# Homepage
get '/' do
	"This is the RiffRaff homepage!"
	erb :home
end



# About
get '/about' do
	erb :about
end




# Logging in/out
get '/signup' do
	erb :signup
end

post '/signup' do

end

get '/login' do
	erb :login
end

post '/login' do

end


post '/logout' do

end



# User pages
get '/myriffraff' do
	erb :myriffraff
end


get '/profile/:username' do
	erb :profile
end
post '/profile' do
	erb :profile
end



# Provider pages
get '/provider/riffer/:providerId' do

end

get '/provider/edit/:providerId' do

end

post '/provider/edit/:providerId' do

end

get '/provider/:providerId' do

end



# Services pages
get '/service/:providerId/:serviceId' do

end

get '/services/search/?*' do

end


get not_found do
	'go to' '/'
end


