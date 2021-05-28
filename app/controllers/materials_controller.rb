class MaterialsController < ApplicationController
  def new
    @material = Material.new
  end
  
  def create
    @material = Material.new(recipe_params)
    if @material.save&&Recipe_material.new(recipe_id: params[:recipe_id], material_id: @material.id).save
      redirect_to @material.recipe, success: '材料を追加しました'
    else
      flash.now[:danger] = "材料を追加できませんでした"
      render :new
    end
  end
  
  def update
  end
  
  def destory
  end
  
  private
  def recipe_params
    params.require(:material).permit(:title, :amount)
  end
end
