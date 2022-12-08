class ProduceController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @produce = Produce.all
  end

  def show
    @produce = Produce.find(params[:id])
  end

  private

  # def find_produce
  #   @produce = Produce.find(params[:id])
  # end

end
