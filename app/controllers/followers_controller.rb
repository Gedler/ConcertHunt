class FollowersController < ApplicationController

    def index
        followers = Follower.all
        render json: followers 
    end 


    def show 
        follower = Follower.find(params[:id])
        render json: follower
    end 


end
