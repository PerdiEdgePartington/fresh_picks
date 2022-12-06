class CreateProduceRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :produce_recipes do |t|
      t.references :produce, null: false, foreign_key: true
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
