class AuthorsController < ApplicationController

    get '/authors' do 
        if session[:user_id]
            erb :'authors/index'
        else 
            redirect '/'
        end 
    end 
end 