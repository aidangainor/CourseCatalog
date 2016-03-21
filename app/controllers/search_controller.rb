class SearchController < ApplicationController
  def new
    @subjects = Subject.all.order(:name)
  end

  def index
    if params[:search]
      @courses = Course.where("name LIKE ?", "%#{params[:search]}%")
    else
      @courses = Course.all.order(:code)
    end
  end
end
