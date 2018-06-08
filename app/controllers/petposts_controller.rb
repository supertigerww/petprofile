class PetpostsController < ApplicationController
  def new
    @petpost = Petpost.new
  end

  def create
    @petpost = Petpost.new(petpost_params)
    if @petpost.save
      redirect_to "/petprofile/users/#{session[:user_id]}"
    else
      flash[:errors] = @petpost.errors.full_messages
      render "new"
    end
  end

  private
    def petpost_params
      params.require(:petpost).permit(:title,:content,:image,:user_id, :pet_id)
    end
end
