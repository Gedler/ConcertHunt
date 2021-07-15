class AttendingConcertsController < ApplicationController

        def index 
            concerts = AttendingConcert.all 
            render json: concerts 
        end 


        def show 
            concert = AttendingConcert.find(params[:id])
            render json: concert 
        end 

        def create 
            attending_concert = AttendingConcert.new(attendingconcert_params)
                    if attending_concert.valid? 
                        attending_concert.save 
                    render json: attending_concert
                    else 
                        render json: {errors: attending_concert.errors.full_messages}
                    end 
        end 

        def destroy 
            concert = AttendingConcert.find(params[:id])
            concert.destroy
            render json: concert
        end

        private 

        def find_concert 
           concert = AttendingConcert.find(params[:id])
        end

        def attendingconcert_params
            params.permit(:fan_id, :concert_id)
        end 


        
end
