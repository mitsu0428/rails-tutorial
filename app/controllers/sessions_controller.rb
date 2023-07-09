class SessionsController < ApplicationController

  def new
    # flash[:success] = "Welcome to the Sample App!"
    # puts "flash #{flash}"
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      puts "login success"
      log_in user
      redirect_to user
    else
      puts "login failed"
      flash[:danger] = 'Invalid email/password combination' # 本当は正しくない
      render 'new'
    end
  end

  def isLogin

  end

  def destroy
  end
end