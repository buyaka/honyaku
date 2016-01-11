class DashboardController < ApplicationController
  layout "dashboard"
  def index
    @books = Book.all
  end

end
