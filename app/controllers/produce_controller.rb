class ProduceController < ApplicationController

  def show

  end

  private

  # def find_produce
  #   @produce = Produce.find(params[:id])
  # end

  skip_before_action :authenticate_user!, only: :index
  def index
    @produce = Produce.all
  end
end
