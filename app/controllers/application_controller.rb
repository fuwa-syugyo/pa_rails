class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  helper_method :logged_in?
  allow_browser versions: :modern
  layout "application"

  private

  def logged_in?
    !!session[:user_id]
  end
end
