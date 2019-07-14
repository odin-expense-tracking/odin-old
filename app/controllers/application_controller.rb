class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  # before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :masquerade_user!
  # around_action :set_time_zone, if: :current_user

  if ((is_a? ::DeviseController) && current_user.admin?)
    layout 'admin/application'
  else
    layout 'application'
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :timezone])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :timezone])
  end

  def set_time_zone(&block)
    Time.use_zone((current_user.timezone||"Central Time (US & Canada)"), &block)
  end

end
