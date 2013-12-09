require 'sinatra/base'

# Why is it a good idea to wrap our App class in a module?
module StudentSite
  class App < Sinatra::Base
    get '/hello-world' do
      @random_numbers = (1..20).to_a
      erb :hello
    end

    get '/artists' do
      
      erb :artist
    end
  end
end