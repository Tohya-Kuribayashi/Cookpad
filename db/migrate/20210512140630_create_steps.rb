class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.integer :recipe_id
      t.string :description
      t.string :image
      t.integer :priority

      t.timestamps
    end
  end
end
