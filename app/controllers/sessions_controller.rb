class SessionsController < ApplicationController

  def new

  end

  def create
    binding.pry
    if params[:name]
      current_user = params[:name]
      redirect_to 'sessions#welcome'
    else
      redirect_to(action: 'new')
    end
  end

  def destroy
    session.delete :name
    redirect_to controller: 'application', action: 'hello'
  end

  def welcome
  end
end
