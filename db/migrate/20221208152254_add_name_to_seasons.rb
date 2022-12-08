class AddNameToSeasons < ActiveRecord::Migration[7.0]
  def change
    add_column :seasons, :name, :string
    remove_column :seasons, :months, :string
  end
end
