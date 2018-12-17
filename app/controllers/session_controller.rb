class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by name:params[:name]

    if user.present? and user.authenticate params[:password]
      session[:user_id] = user.id 
      redirect_to documents_path
    else 
      flash[:error] = 'Incorrect username and/or password'
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
