class SessionsController < ApplicationController
  def new
    def create
        user = User.find_by(user_id: params[:session][:user_id].downcase)
        if user && user.authenticate(params[:session][:password])
          log_in user
          #redirect_to user
          redirect_to expenses_url
        else
          flash.now[:danger] = 'Invalid user ID/password combination'
          render 'new'
        end
      end
  end
  def destroy
      log_out
      redirect_to login_url
  end
end
