class RecipesController < ApplicationController
    before_action :find_recipe, only: [:update, :destroy]

    def index
        @recipes= Recipe.all
        render json: RecipeSerializer.new(@recipes), status: :accepted
    end

    def index 
        @recipes = current_user.recipes
        render json: RecipeSerializer.new(@recipes), status: :accepted
    end

    def show
        @recipe = Recipe.find_by(id: params[:id])
        render json: RecipeSerializer.new(@recipe), status: :accepted
    end

    def create  
        @recipe = Recipe.new(recipe_params)
        current_user.recipes << @recipe
        if @recipe.valid?
            render json: RecipeSerializer.new(current_user.recipes.last), status: :ok
        else
            render json: {message: "error", errors: @recipe.errors}, status: :not_acceptable
        end
    end

    def update
        if @recipe.update(recipe_params)
            render json: RecipeSerializer.new(@recipe), status: :ok
        else
            render json: {message: "error", errors: @recipe.errors}, status: :not_acceptable
        end
    end

    def destroy
        if @recipe.destroy
            render json: {message: "deleted recipe"}, status: :ok
        else 
            render json: {message: "error", errors: @recipe.errors}, status: :not_acceptable
        end
    end

    private
    
    def find_recipe
        @recipe = Recipe.find_by(id: params[:id])
    end

    def recipe_params
        params.require(:recipe).permit(:user_id, :recipe_id, :id, :name, :category, :origin, :instructions, :ingredients, :measurements, :image, :cookbooks)
    end
end
