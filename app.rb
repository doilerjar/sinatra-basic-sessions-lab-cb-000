require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secret"
  end
  
  get '/' do
    erb :index
  end
  
  post '/checkout' do
    # Add to session hash
    # binding.pry
<<<<<<< HEAD
    session[:item] = params[:item]
=======
    @item = params[:item]
    sessions[:item] = @item
>>>>>>> 2d7d2c8d5137a7a788702c65d71a9e6982f26b50
    
    erb :checkout
  end
  
end