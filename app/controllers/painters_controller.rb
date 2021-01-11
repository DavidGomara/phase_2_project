class PaintersController < ApplicationController

    get '/painters' do 
        if session[:user_id]
            @painters = Painter.all
            erb :'painters/index'
        else 
            redirect '/'
        end 
    end 

    get '/painters/new' do 
        if session[:user_id]
            erb :'painters/new' 
        else 
            redirect '/'
        end 
    end 

    get '/painters/:id' do 
        if session[:user_id]
            @painter = Painter.find(params[:id])
            @artworks = Artwork.all.select{ |p| p.painter_id == @painter.id}
            erb :'painters/show' 
        else 
            redirect '/'
        end 
    end 
    
    get '/painters/:id/edit' do
        @painter = Painter.find(params[:id])
        if session[:user_id] != @painter.user_id
            @error = "You Have To of Created a File to Edit It."
            erb :'/painters/show'   
        elsif session[:user_id] == @painter.user_id
            erb :'painters/edit'  
        else 
            redirect '/'
        end  
    end

    get '/painters/:id/delete' do
        @painter = Painter.find(params[:id])
        if session[:user_id] != @painter.user_id
            @error = "You Have To of Created a File to Delete It."
            erb :'/painters/show'   
        elsif session[:user_id] == @painter.user_id
            erb :'painters/delete'  
        else 
            redirect '/'
        end  
    end

    post '/painter' do
        @painter = Painter.new(name:params[:name], user_id:session[:user_id], bio:params[:bio], img:params[:img])
        if Painter.find_by(name: params[:name])
            @error_2 = "Artist is Already established"
            erb :'painters/new'
        elsif @painter.save 
            erb :'/painters/show'
        else 
            @error = @painter.errors.full_messages
            erb :'painters/new'
        end 
    end 

    patch '/painters/:id' do
        @painter = Painter.find(params[:id])
        @painter.update(name: params[:name],bio: params[:bio], img: params[:img])
        binding.pry
        redirect to "/painters/#{@painter.id}"
    end

    delete "/painters/:id/delete" do
        @painter = Painter.find(params[:id])
        @painter.destroy
        redirect '/painters'
    end 
end 