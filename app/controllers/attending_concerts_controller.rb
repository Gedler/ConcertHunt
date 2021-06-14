class AttendingConcertsController < ApplicationController

        def index 
            concerts = AttendingConcert.all 
            render json: concerts 
        end 


        def show 
            concert = AttendingConcert.find(params[:id])
            render json: concert 
        end 

        
end
