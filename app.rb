require 'sinatra/base'
require './lib/compliment.rb'
require './lib/color.rb'

# Why is it a good idea to wrap our App class in a module?
module EmergencyCompliment # sometimes modules are used if multiple apps are made so its for namespacing
  class App < Sinatra::Base
   
    get '/compliment' do
      @compliment = Compliment.new
      @color = Color.new
      erb :compliment
    end





    
    
  end
end