class AddImgToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :img, :string
  end
end
