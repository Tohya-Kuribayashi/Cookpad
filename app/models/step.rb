class Step < ApplicationRecord
  validates :recipe_id, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :priority, presence: true
  
  belongs_to :recipe
  
  mount_uploader :image, ImageUploader
end
