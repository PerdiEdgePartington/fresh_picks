class Season < ApplicationRecord
  has_many :produce_seasons
  has_many :produce, through: :produce_seasons


  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name ],
    associated_against: {
      produce_seasons: [ :produce_id ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
