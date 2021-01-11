class MusiciansController < ApplicationController

    get '/musicians' do 
        if session[:user_id]
            erb :'musicians/index'
        else 
        redirect '/'
        end 
    end 

    get '/musicians/:id' do 
        if session[:user_id]
            erb :'musicians/band_page'
        else 
        redirect '/'
        end 
    end 
end 