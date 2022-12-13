class ProduceController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    # @produce = Produce.search(params[:query])
    @produce = Produce.all

  #   if params[:query].present?
  #   @produce = Produce.where("name ILIKE ?", "%#{params[:query]}%")
  # else
  #   @produce = Produce.all
  # end

    @search = params["name"]
    if @search.present?
      sql_query = <<~SQL
      seasons.name @@ :query
    SQL
    @produce = Produce.joins(:produce_seasons).joins(:seasons).where(sql_query, query: "%#{@search}%")
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
