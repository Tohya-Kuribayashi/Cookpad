class StepsController < ApplicationController
  def new
    @step = Step.new
    @recipe = Recipe.find(params[:recipe_id])
  end
  
  def create
    @step = Step.new(recipe_params)
    if @step.save
      @steps = Step.where(recipe_id: @step.recipe_id).order(priority: "ASC")
      redirect_to @step.recipe, success: '手順を追加しました'
    else
      flash.now[:danger] = "手順を追加できませんでした"
      render :new
    end
  end
  
  def update
  end
  
  def destory
  end
  
  private
  def recipe_params
    params.require(:step).permit(:recipe_id, :image, :description, :priority)
  end
end
