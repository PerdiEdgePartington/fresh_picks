class CreateProduceSeasons < ActiveRecord::Migration[7.0]
  def change
    create_table :produce_seasons do |t|
      t.references :produce, null: false, foreign_key: true
      t.references :seasons, null: false, foreign_key: true

      t.timestamps
    end
  end
end
