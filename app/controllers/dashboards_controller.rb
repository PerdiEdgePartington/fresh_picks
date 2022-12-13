class DashboardsController < ApplicationController
  def show
    @recipes = current_user.favorited_by_type('Recipe')
  end

end
