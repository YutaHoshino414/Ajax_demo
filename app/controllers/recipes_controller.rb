class RecipesController < ApplicationController
  before_action :set_recipe, only: [:edit, :destroy]
  
  def index
    @recipes = Recipe.all
    @recipe = Recipe.new

  end

  def create
    Recipe.create(recipe_params)
    @recipes = Recipe.all
  end

  def edit

  end

  def destroy
    @recipe.destroy
  end


  private
  def recipe_params
    params.require(:recipe).permit(:title, :body)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

end
