class AddColumnToProduces < ActiveRecord::Migration[7.0]
  def change
    add_column :produces, :nutrition, :string
  end
end
