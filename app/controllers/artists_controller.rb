class ArtistsController < ApplicationController 

    before_action :find_artist, only: [:show, :update, :destroy] #you can only access the variable as an instance variable!
    
    def index 
        artists = Artist.all 
        render json: artists 
    end 

    def show 
        render json: @artist
    end 

    def create 
        artist = Artist.new(artist_params)
            if artist.valid? 
                artist.save 
                render json: artist
            else 
                render json: {errors: artist.errors.full_messages}
            end
    end

    def update 
        @artist.update(artist_params)
        render json: @artist 
    end

    def destroy 
        @artist.destroy 
        render json: @artist 
    end 

    private 

    def find_artist 
        @artist = Artist.find(params[:id])
    end
 

    def artist_params 
        params.permit(:name, :location)
    end 


end 
