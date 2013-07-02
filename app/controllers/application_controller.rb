class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  layout 'frontend'

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :password_confirmation, :current_password) }
  end

  def succeed_message
    "#{t("activerecord.models.#{controller_name.singularize}")}#{t("#{action_name}.succeed")}"
  end

  def failed_message
    "#{t("activerecord.models.#{controller_name.singularize}")}#{t("#{action_name}.failed")}"
  end
end
