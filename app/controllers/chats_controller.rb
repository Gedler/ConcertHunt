class ChatsController < ApplicationController

    def index
        chatbox = Chat.all
        render json: chatbox 
    end 


    def show 
        chatbox = Chat.find(params[:id])
        render json: chatbox
    end 

    def create 
        chatbox = Chat.create(chatbox_params)
        if chatbox.valid? 
            chatbox.save 
            render json: chatbox 
        else 
            render json: {errors: chatbox.errors.full_messages}
        end 
    end

    def destroy 
        chatbox = Chat.find(params[:id])
        chatbox.destroy 
        render json: chatbox 
    end 

private 

    def chatbox_params 
        params.permit(:fan_name, :comment)
    end


end
