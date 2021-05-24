class CookbooksController < ApplicationController
    before_action :find_cookbook, only: [:update, :destroy]

    # def index
    #     @cookbooks= Cookbook.all
    #     render json: CookbookSerializer.new(@cookbooks), status: :accepted
    # end

    def index 
        @cookbooks = current_user.cookbooks
        render json: CookbookSerializer.new(@cookbooks), status: :accepted
    end

    def show
        @cookbook = Cookbook.find_by(id: params[:id])
        render json: CookbookSerializer.new(@cookbook), status: :accepted
    end
    
    def create 
        @cookbook = Cookbook.new(cookbook_params) 
        @cookbook.user = @@user
        @cookbook.save
        if @cookbook.valid?
            render json: CookbookSerializer.new(@cookbook), status: :ok
        else
            render json: {message: "error", errors: @cookbook.errors}, status: :not_acceptable
        end
    end

    def update
        if @cookbook.update(cookbook_params)
            render json: CookbookSerializer.new(@cookbook), status: :ok
        else
            render json: {message: "error", errors: @cookbook.errors}, status: :not_acceptable
        end
    end

    def destroy
        if @cookbook.destroy
            render json: {message: "deleted cookbook"}, status: :ok
        else 
            render json: {message: "error", errors: @cookbook.errors}, status: :not_acceptable
        end
    end

    private
    
    def find_cookbook
        @cookbook = Cookbook.find_by(id: params[:id])
    end

    def cookbook_params
        params.require(:cookbook).permit(:user_id, :recipe_id)
    end

end
