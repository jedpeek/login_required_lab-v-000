class SecretsController < ApplicationController

  def show
    redirect_to controllers: 'sessions', action: 'new' if !logged_in?
  end
end
