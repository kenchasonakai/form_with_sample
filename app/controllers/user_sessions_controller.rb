class UserSessionsController < ApplicationController
  def new; end

  def create
    user = login(params[:email], params[:password])
    if user
      redirect_to root_path, success: 'Login successful'
    else
      flash.now[:danger] = 'Login failed'
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    logout
    redirect_to root_path, success: 'Logged out!'
  end
end
