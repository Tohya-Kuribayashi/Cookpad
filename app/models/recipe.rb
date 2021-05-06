class Recipe < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true, on: :update
  validates :image, presence: true
  validates :user_id, presence: true
  
  belongs_to :user
  
  mount_uploader :image, ImageUploader
end
