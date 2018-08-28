class SessionsController < ApplicationController

  def new

  end

  def create
    if params[:name] && !params[:name].empty?
      current_user = params[:user]
      redirect_to action:'welcome'
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
