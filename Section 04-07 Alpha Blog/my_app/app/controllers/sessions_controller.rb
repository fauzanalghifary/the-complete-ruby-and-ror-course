class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      session[:user_id] = user.id
      flash["notice"] = "Welcome back, #{user.username}!"
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash["notice"] = "You have logged out."
    redirect_to root_path
  end
end