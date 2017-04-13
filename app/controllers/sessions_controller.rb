class SessionsController < ApplicationController
  def new
  end

  def create
  	if !params[:name].present?
  		redirect_to login_path
  	else
  		session[:name] = params[:name]
  		@name = session[:name]
  		redirect_to home_path
  	end
  end

  def destroy
  	session.clear
  	redirect_to home_path
  end
end
