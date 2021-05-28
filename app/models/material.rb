class Material < ApplicationRecord
  validates :title, presence: true
  validates :amount, presence: true
  
  has_many :recipe_materials
  has_many :recipes, :through => :recipe_materials
end
