class ApplicationController < ActionController::Base

  before_filter :authenticate_user!

  before_filter :configure_permitted_parameters, if: :devise_controller?




  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :role
    devise_parameter_sanitizer.for(:sign_up) << :school
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  @interventions = Intervention.all

end
