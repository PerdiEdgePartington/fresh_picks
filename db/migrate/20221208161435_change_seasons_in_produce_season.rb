class ChangeSeasonsInProduceSeason < ActiveRecord::Migration[7.0]
  def change
    rename_column :produce_seasons, :seasons_id, :season_id
  end
end
