class ConcertsController < ApplicationController

    before_action :find_concert, only: [:show, :destroy, :update]


    def index 
        concerts = Concert.all 
        render json: concerts 
    end 

    def show 
        render json: @concert 
    end 


    def create 
        concert = Concert.create(concert_params)
        render json: concert 
    end 

    def update 
        @concert.update (concert_params)
        render json: @concert
    end 


    def destroy 
        @concert.destroy
        render json: @concert 
    end 


    private 


    def find_concert 
        @concert = Concert.find(params[:id])
    end 


    def concert_params
        params.permit(:venue, :date, :location, :price, :artist_id)
    end 
















end
