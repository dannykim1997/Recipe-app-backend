class UsersController < ApplicationController
    skip_before_action :authorized

    def create 
        @user = User.create(user_params) 
        if @user.valid?
            token = encode_token({user_id: @user.id})
            render json: {user: UserSerializer.new(@user), jwt: token}, status: :accepted
        else
            render json: {message: "failed to signup"}, status: :not_acceptable
        end
    end

    def index
        if current_user
        render json: UserSerializer.new(@@user), status: :accepted
        end
    end
    
    private

    def user_params
        params.require(:user).permit(:username, :first_name, :last_name, :password, :password_confirmation)
    end
end
