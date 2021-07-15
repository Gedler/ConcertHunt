class ApplicationController < ActionController::API
    
    #before_action :logged_in?

    def encode_token(payload)
        JWT.encode(payload, "Music224")
    
    end

    def logged_in?
    
        headers = request.headers["Authorization"]
        token = headers.split(" ")[1]

        begin
            fan_id = JWT.decode(token,"Music224")[0]["fan_id"]
            fan = Fan.find(fan_id)
        rescue
            user = nil
        end

        unless user
            render json: {error: "You must login!!"}
        end
    end


end
