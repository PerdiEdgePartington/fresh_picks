class RecipesController < ApplicationController
  before_action :authenticate_user!, only: :toggle_favorite
  require "open-uri"
  require "nokogiri"

  def index
    @produce = Produce.find(params[:produce_id])
    @produce_recipes = ProduceRecipe.where(produce_id: @produce)
  end

  def toggle_favorite
      @recipe = Recipe.find_by(id: params[:id])
      current_user.favorited?(@recipe) ?
    current_user.unfavorite(@recipe) : current_user.favorite(@recipe)
    redirect_to  produce_recipes_path(params[:produce_id])
  end

end

  # def scraping(ingredient)
  #   html = URI.open("https://www.allrecipes.com/search?q=#{ingredient}").read
  #   # 1. Parse HTML
  #   doc = Nokogiri::HTML(html, nil, "utf-8")
  #   @results = []
  #   # 2. Search the Nokogiri document by identifying the cards
  #   doc.search(".mntl-card-list-items.card").each do |element|
  #     # 3 Go through actual recipes and not blog articles - recipes are the cards with a rating
  #     unless element.search(".recipe-card-meta__rating-count-number").empty?
  #       # 4. Create recipe and store it in results
  #       name = element.search(".card__title-text").text.strip
  #       details_url = element.attribute("href").value
  #       details_doc = Nokogiri::HTML(URI.open(details_url).read, nil, "utf-8")
  #       description = details_doc.search("#article-subheading_2-0").text.strip
  #       # 6. Create a recipe instance and append it to our results array.
  #       @results << Recipe.new(name: name, description: description, url: details_url)
  #     end
  #   end
  #   # 7. Select the first 5 recipes at the end when we're sure we have built recipes instances (no articles)
  #   @results.first(12)
  #end
