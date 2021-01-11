
class ArtworksController < ApplicationController

get '/painters/artwork/:id/edit' do
    @artwork = Artwork.find(params[:id])
    if session[:user_id] != @artwork.user_id
        @error = "You Have To of Created a File to Edit It."
        erb :'/painters/show'   
    elsif session[:user_id] == @artwork.user_id
        erb :'painters/artwork/edit'  
    else 
        redirect '/'
    end  
end

get '/painters/artwork/:id/new' do
    @painter = Painter.find(params[:id])
    if session[:user_id]
        erb :'painters/artwork/new' 
    else 
        redirect '/'
    end
end 

get '/painters/artwork/:id/delete' do
    @artwork = Artwork.find(params[:id])
    @painter = Painter.find(@artwork.painter_id)
    if session[:user_id] != @painter.user_id
        @error = "You Have To of Created a File to Delete It."
        erb :'/painters/show'   
    elsif session[:user_id] == @painter.user_id
        erb :'painters/artwork/delete'  
    else 
        redirect '/'
    end  
end

post '/artwork' do
    @artwork = Artwork.new(name:params[:name], user_id:session[:user_id], painter_id: params[:painter_id], img:params[:img])
    if @artwork.save 
        redirect to ("/painters/#{@artwork.painter_id}")
    else 
        @error = @artwork.errors.full_messages
        erb :'painters/artwork/new'
    end 
end

patch '/painters/artwork/:id/edit' do
    @artwork = Artwork.find(params[:id])
    @painter = Painter.find(@artwork.painter_id)
    @artwork.update(name: params[:name], img: params[:img])
    redirect to "/painters/#{@painter.id}"
end

delete "/artwork/:id/delete" do
    @artwork = Artwork.find(params[:id])
    @painter = Artwork.find(@artwork.painter_id)
    @artwork.destroy
    redirect to "/painters/#{@painter.id}"
end
end 