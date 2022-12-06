class CreateSeasons < ActiveRecord::Migration[7.0]
  def change
    create_table :seasons do |t|
      t.string :months, array: true

      t.timestamps
    end
  end
end
