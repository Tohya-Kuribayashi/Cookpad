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
      redirect_to @recipe, success: '作成に成功しました'
    else
      flash.now[:danger] = "作成に失敗しました"
      render :new
    end
  end

  def update
    @recipe = current_user.recipes
  end
  
  private
  def recipe_params
    params.require(:recipe).permit(:title, :image, :description)
  end
end
