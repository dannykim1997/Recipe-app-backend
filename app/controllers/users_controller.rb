class UsersController < ApplicationController
    skip_before_action :authorized

    def create 
        @user = User.create(user_params) 
        if @user.valid?
            render json: {login: true}, status: :created
        else
            render json: {message: "failed to login"}, status: :not_acceptable
        end
    end

    def index
        if current_user
        render json: UserSerializer.new(@@user), status: :accepted
        end
    end
    
    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
