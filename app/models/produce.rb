class Produce < ApplicationRecord
  has_many :produce_seasons
  has_many :seasons, through: :produce_seasons
  has_many :produce_recipes
  has_many :recipes, through: :produce_recipes
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_season,
  associated_against: {
    produce_season: [ :id ]
  }
end
