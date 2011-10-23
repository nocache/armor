# $ ruby app.rb
#
require 'rubygems'
require 'sinatra'

configure :production do
  # Configure stuff here you'll want to
  # only be run at Heroku at boot

  # TIP:  You can get you database information
  #       from ENV['DATABASE_URI'] (see /env route below)
end

# Routes

#get '/' do
  #erb :frontpage
#end

#get '/gallery' do
  #erb :gallery
#end

#get '/' do
  #erb :forms
#end

#get '/blog' do
  #erb :blog
#end

# Errors

not_found do
  erb :'404'
end

error do
  erb :'500'
end

# Partials

helpers do

  def partial template
    erb template.to_sym, :layout => false
  end

end

# Test at <appname>.heroku.com

# You can see all your app specific information this way.
# IMPORTANT! This is a very bad thing to do for a production
# application with sensitive information

#get '/env' do
#	ENV.inspect
#end