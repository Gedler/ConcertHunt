class FansController < ApplicationController

before_action :find_fan, only: [:show, :destroy, :update] 
#skip_before_action :logged_in?, only: [:create, :login, :index]

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

    def login

        fan = Fan.find_by(user: params[:user])

        if fan && fan.authenticate(params[:password])
            render json: {fan: fan.user, id: fan.id, token: encode_token({fan_id: fan.id})}
        else
            render json: {error: "username or password is not correct!!"}
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
