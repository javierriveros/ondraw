class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :set_layout
  before_action :configurar_usuario, if: :devise_controller?
  protected
    def configurar_usuario
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    end
    def set_layout
      "application"
    end
end
