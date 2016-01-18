class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :layout_by_resource

protected

  def layout_by_resource
    if devise_controller? && (action_name == "new" || action_name == "create")
      "application"
    else
      "dashboard"
    end
  end
end
