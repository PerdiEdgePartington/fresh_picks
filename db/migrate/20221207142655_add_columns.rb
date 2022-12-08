class AddColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :produces, :nutrition, :string
    add_column :produces, :nutrition_calories, :string
    add_column :produces, :nutrition_fat, :string
    add_column :produces, :nutrition_protein, :string
    add_column :produces, :nutrition_carbs, :string
    add_column :produces, :nutrition_sugar, :string
    add_column :produces, :nutrition_fiber, :string
  end
end
