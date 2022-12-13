class ProduceController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    # @produce = Produce.search(params[:query])
    @produce = Produce.all
    @search = params["search"]
    if @search.present?
      @name = @search["name"]
      sql_query = <<~SQL
      seasons.name @@ :query
    SQL
    @produce = Produce.joins(:produce_seasons).joins(:seasons).where(sql_query, query: "%#{@name}%")
    end
  end

  def show
    @produce = Produce.find(params[:id])
  end

  # private

  # def find_produce
  #   @produce = Produce.find(params[:id])
  # end
end
