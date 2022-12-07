class ProduceController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @produce = Produce.all
  end
end
