class UsersController < ApplicationController

    get '/' do
        erb :'users/login' 
    end

    post '/login' do
        @user = User.find_by(username:params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] =  @user.id
            redirect "/homepage"
        else 
            @error = "Sorry, Either Username or Password is Incorrect, please try again. Thank You"
            erb :'users/login'
        end 
    end 

    get '/signup' do
        erb :'users/signup'
    end

    post '/signup' do
        @user = User.new(params)
         if User.find_by(username: params[:username])
            @error_2 = "An Account with that Username already exits"
            erb :'users/signup'
         elsif @user.save 
            session[:user_id] = @user.id
            redirect '/homepage'
         else 
            @error = @user.errors.full_messages
            erb :'users/signup'
         end 
    end 

    get '/logout' do
        session.destroy 
        redirect '/' 
    end
    
end 