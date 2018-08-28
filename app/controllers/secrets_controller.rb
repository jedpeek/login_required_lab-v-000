class SecretsController < ApplicationController
  before_action :require_login

  def show
    redirect_to controllers: 'sessions', action: 'new' if !logged_in?
  end
end
