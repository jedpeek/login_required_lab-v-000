class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    session[:name]
  end

  private

  def require_login
    redirect_to controller: 'sessions', action: 'new' unless current_user
  end
end
