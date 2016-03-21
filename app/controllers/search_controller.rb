class SearchController < ApplicationController
  def new
    @subjects = Subject.all.order(:name)
  end

  def index
    if Rails.env.production?
      search_str = "name ILIKE ?"
    else
      search_str = "name LIKE ?"
    end
    if params[:search]
      @courses = Course.where(search_str, "%#{params[:search]}%")
    else
      @courses = Course.all.order(:code)
    end
  end
end
