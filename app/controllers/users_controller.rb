class UsersController < ApplicationController
  include SessionsHelper

  def show

    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end


  def enroll
    course = Course.find(params[:course_id])
    current_user.enrollments.create(course: course)
    redirect_to :back
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
