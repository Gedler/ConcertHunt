class ChatboxesController < ApplicationController
    def index
        chatbox = Chatbox.all
        render json: chatbox 
    end 


    def show 
        chatbox = Chatbox.find(params[:id])
        render json: chatbox
    end 

    def create 
        chatbox = Chatbox.create(chatbox_params)
        if chatbox.valid? 
            chatbox.save 
            render json: chatbox 
        else 
            render json: {errors: chatbox.errors.full_messages}
        end 
    end

    def destroy 
        chatbox = Chatbox.find(params[:id])
        chatbox.destroy 
        render json: chatbox 
    end 

private 

    def chatbox_params 
        params.permit(:fan_id, :comment, :fan_name)
    end


end
