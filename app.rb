require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do

    erb :reverse
  end

  post '/reverse' do
      org = params["string"]
      @reversed_string = org.reverse
    erb :reversed
  end

  get '/friends' do
    # Write your code here!
    @friends = ['Malala Yousafzai']
    erb :friends
  end
end
