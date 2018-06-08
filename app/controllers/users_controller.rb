class UsersController < ApplicationController
    before_action :user_logged_in, only: [:new]
    before_action :user_authorized, only: [:edit]

    def new
    end

    def create
        user = User.create(user_params)
    
        if user.valid?
          session[:user_id] = user.id
          redirect_to "/petprofile/home"
        else
          flash[:errors] = user.errors.full_messages
          redirect_to "/petprofile"
        end
    end

    def show
      @user = User.find(session[:user_id])
    end


    private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :city, :state ,:password,:password_confirmation )
    end
end
