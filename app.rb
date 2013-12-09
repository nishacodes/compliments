require 'sinatra/base'
require './lib/thing.rb'

# Why is it a good idea to wrap our App class in a module?
module StudentSite # sometimes modules are used if multiple apps are made so its for namespacing
  class App < Sinatra::Base
    get '/hello-world' do
      @random_numbers = (1..20).to_a
      @thing = Thing.new("nisha",7)
      erb :hello
    end

    get '/artists' do
      @artists = ["Claude Monet", "Vincent van Gogh", "Edgar Degas"]
      erb :artists
    end
  end
end