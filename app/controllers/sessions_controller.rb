class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by(email: params[:email].downcase)
    if user && user.authenticate(params[:password])
      sign_in user
      # remember user
      redirect_to controller: 'chat', action: 'index'
    else
      # flash.now[:danger] = 'Invalid email/password combination'
      redirect_to '/'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
