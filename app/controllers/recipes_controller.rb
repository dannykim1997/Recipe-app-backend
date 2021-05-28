class RecipesController < ApplicationController
    before_action :find_recipe, only: [:update, :destroy]

    def index
        # r = Recipe.fetch_from_api 
        @recipes = current_user.recipes
        render json: RecipeSerializer.new(@recipes), status: :accepted
    end

    def show
        @recipe = Recipe.find_by(id: params[:id])
        render json: RecipeSerializer.new(@recipe), status: :accepted
    end

    def create  
        @recipe = Recipe.create(recipe_params)
        if @recipe.valid?
            @cookbook = Cookbook.create(user_id: current_user.id, recipe_id: @recipe.id)
            render json: RecipeSerializer.new(@recipe), status: :created
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
        params.require(:recipe).permit(:user_id, :recipe_id, :name, :category, :origin, :instructions, :ingredient1, :ingredient2, :ingredient3, :ingredient4, :ingredient5, :ingredient6,:ingredient7, :ingredient8, :ingredient9, :ingredient10, :ingredient11, :ingredient12, :ingredient13, :ingredient14, :ingredient15, :ingredient16, :ingredient17, :ingredient18, :ingredient19, :ingredient20, :measurement1, :measurement2, :measurement3, :measurement4, :measurement5, :measurement6, :measurement7, :measurement8, :measurement9, :measurement10, :measurement11, :measurement12, :measurement13, :measurement14, :measurement15, :measurement16, :measurement17, :measurement18, :measurement19, :measurement20, :image, :cookbooks)
    end
end
