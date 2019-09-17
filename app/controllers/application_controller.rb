class ApplicationController < ActionController::Base

  before_action :find_current_user
  helper_method :is_logged_in?

  def find_current_user
    if is_logged_in?
      @current_user = User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

  def check_login
    unless is_logged_in?
      redirect_to new_session_path
    end
  end

  def is_logged_in?
    session[:user_id].present?
  end

  def check_admin
    @current_user = find_current_user

    unless @current_user.present? and @current_user.is_admin?
      redirect_to root_path
    end
  end

  def find_admin_user
    @current_user = find_current_user

    if @current_user.present? and @current_user.is_admin?
      @current_user
    else
      nil
    end
  end
end
