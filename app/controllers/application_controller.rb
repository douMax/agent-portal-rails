class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :fetch_user

  private
  
  def fetch_user 
    @current_user = User.find session[:user_id] if session[:user_id].present?
    session[:user_id] = nil unless @current_user.present?
  end

  def check_if_logged_in
    redirect_to login_path unless @current_user.present?
  end

  def check_if_admin
    redirect_to root_path unless @current_user.present? and @current_user.is_admin
  end

  def check_if_sales_admin
    redirect_to root_path unless @current_user.present? and @current_user.is_sales_admin
  end

  def check_user_management_permission
    redirect_to error_path unless @current_user.present? && ( @current_user.is_sales_admin || @current_user.is_admin)
  end


end
