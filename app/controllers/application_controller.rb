class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :permitted_params

  protected
  def permitted_params
    @permitted_params ||= PermittedParams.new(params)
  end
end
