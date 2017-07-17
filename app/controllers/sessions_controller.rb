class SessionsController < ApplicationController


  def login_attempt
    authorized_user = User.authenticate(params[:username_or_email],params[:login_password])
    if authorized_user
      session[:user_id] = authorized_user.id
      redirect_to(:action => 'home')
    else
      flash[:notice] = "Invalid username or password"
      flash[:color]= "invalid"
      render "login"  
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to(:action => 'login')
  end
end