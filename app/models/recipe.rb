class Recipe < ApplicationRecord
  has_many :produce_recipes
  has_many :produce, through: :produce_recipes
end
