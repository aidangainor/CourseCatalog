class SearchController < ApplicationController
  include SessionsHelper
  before_filter :authenticate
  def new
    @subjects = Subject.all.order(:name)

    if Rails.env.production?
      search_str = "name ILIKE ?"
    else
      search_str = "name LIKE ?"
    end

    if params[:search] && params[:subject] != "Select Subject"
      course_temp = Subject.where(subject_id: params[:subject]).first.courses
      @courses = course_temp.where(search_str, "%#{params[:search]}%")
    elsif params[:subject] != ""
      @courses = Course.where(search_str, "%#{params[:search]}%")
    else
      @courses = Course.all.order(:code)
    end
  end
end
