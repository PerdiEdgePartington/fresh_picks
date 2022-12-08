class Produce < ApplicationRecord
  has_many :produce_seasons
  has_many :seasons, through: :produce_seasons
  has_many :produce_recipes
  has_many :recipes, through: :produce_recipes
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name ],
    associated_against: {
      produce_seasons: [ :months ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
