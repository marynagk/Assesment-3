class ApplicationController < ActionController::Base
  def current_user
    @current_user ||= User.find_by id: session[:user_id]
  end

  def logged_in?
    current_user.present?
  end

  def authorize
    redirect_to "/" if not logged_in?
  end
end
