class FollowersController < ApplicationController

    def index
        followers = Follower.all
        render json: followers 
    end 


    def show 
        follower = Follower.find(params[:id])
        render json: follower
    end 

    def create 
        follower = Follower.create(follower_params)
        if follower.valid? 
            follower.save 
            render json: follower 
        else 
            render json: {errors: follower.errors.full_messages}
    end 
end


    def destroy 
        follower = Follower.find(params[:id])
        follower.destroy 
        render json: follower 
    end 
    

    private 

    def follower_params 
        params.permit(:artist_id, :fan_id)
    end

end
