class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  def hello
    render text: "hello, word"
  end

  def branch
    render text: "this is a quick test of branching"
  end
end
