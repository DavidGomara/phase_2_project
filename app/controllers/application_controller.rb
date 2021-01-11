require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    set :method_override, true 
    enable :sessions
    set :session_secret, "SecureRandomHex"
  end

  get "/homepage" do
    if session[:user_id]
      erb :homepage
    else 
      redirect '/'
    end 
  end 

  not_found do
    '404. This is nowhere to be found.'
  end

end
