class ProduceController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @produce = Produce.all
    season_filter

    if params[:query].present? && params[:name].present?
      @produce = season_filter
      @query = params[:query].capitalize
      @produce = @produce.where(name: @query)
    else
      season_filter
    end
  end

  def show
    @produce = Produce.find(params[:id])
  end

  private

  def season_filter
    @search = params["name"]
    if @search.present?
      sql_query = <<~SQL
      seasons.name @@ :query
      SQL
      @produce = Produce.joins(:produce_seasons).joins(:seasons).where(sql_query, query: "%#{@search}%")
    end
  end
end
