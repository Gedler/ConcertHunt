class FansController < ApplicationController

before_action :find_fan, only: [:show, :destroy, :update] 

    def index 
        fans = Fan.all 
        render json: fans 
    end 


    def show 
        render json: @fan
    end

    def create 
        fan = Fan.new(fan_params)
            if fan.valid? 
                fan.save 
                render json: fan
            else 
                render json: {errors: fan.errors.full_messages}
            end 
    end 


    def update 
        @fan.update(fan_params) 
        render json: @fan 
    end 


    def destroy 
        @fan.destroy 
        render json: @fan 
    end 


private


    def find_fan 
        @fan = Fan.find(params[:id])
    end 

    def fan_params
        params.permit(:user, :location, :password)
    end 






end
