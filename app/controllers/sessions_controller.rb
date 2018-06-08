class SessionsController < ApplicationController
  def create
    user = User.find_by(email:login_params[:email])

    if user && user.authenticate(login_params[:password])
      session[:user_id] = user.id
      redirect_to '/petprofile/home'
    else
      flash[:errors] = ["Invalida Login Credentials"]
      redirect_to '/petprofile'
    end
  end

  def destroy
    reset_session
    redirect_to '/petprofile'
  end

  private
    def login_params
      params.require(:login).permit(:email,:password)
    end
end
