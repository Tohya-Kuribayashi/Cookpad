class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end
  
  def show
    @recipe = Recipe.find(params[:id])
  end  
  
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = current_user.recipes.new(recipe_params)
    if @recipe.save
      redirect_to @recipe, success: 'レシピを登録しました'
    else
      flash.now[:danger] = "レシピが登録できませんでした"
      render :new
    end
  end
  
  private
  def recipe_params
    params.require(:recipe).permit(:title, :image, :description)
  end
end
