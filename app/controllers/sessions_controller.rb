class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] && !params[:name].blank?
      session[:name] = params[:name]
      redirect_to '/home'
    else
      redirect_to '/login'
    end
  end

  def destroy
    if session[:name]
      session.delete :name
    end
    redirect_to '/login'
  end


end
