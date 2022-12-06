class Season < ApplicationRecord
  has_many :produce_seasons
  has_many :produce, through: :produce_seasons
end
