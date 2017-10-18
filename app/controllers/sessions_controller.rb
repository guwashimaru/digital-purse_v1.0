class SessionsController < ApplicationController
  def new
    def create
        user = User.find_by(user_id: params[:session][:user_id].downcase)
        if user && user.authenticate(params[:session][:password])
          reset_session
          session[:user_id] = user.id
          redirect_to user
        else
          flash.now[:danger] = 'Invalid user ID/password combination'
          render 'new'
        end
      end
  end
end
