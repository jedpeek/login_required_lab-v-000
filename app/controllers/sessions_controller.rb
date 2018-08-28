class SessionsController < ApplicationController

  def new

  end

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to controller: 'sessions', action: 'welcome'
    else
      redirect_to(action: 'new')
    end
  end

  def destroy
    session.delete :name
    redirect_to controller: 'sessions', action: 'new'
  end

  def welcome
  end
end
