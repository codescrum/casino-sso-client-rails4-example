class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # Skip AuthenticityToken to bypass problem with Devise >= 3.3.0
  protect_from_forgery with: :null_session

  # Add filter to bypass flash message problem in Rails 4 (https://github.com/nbudin/devise_cas_authenticatable/issues/81)
  before_filter :redirect_to_sign_in, unless: :user_signed_in?

  def after_sign_in_path_for(resource)
    dashboard_path
  end

  private
  def redirect_to_sign_in
    redirect_to new_user_session_path
  end
end
