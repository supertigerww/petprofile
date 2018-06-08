class FoodcommentsController < ApplicationController
  def create
    @foodcomment = Foodcomment.new(foodcomment_params)
    if @foodcomment.save
      redirect_to "/petprofile/foods/#{foodcomment_params[:food_id]}"
    else
      flash[:errors] = @foodcomment.errors.full_messages
      redirect_to "/petprofile/foods/#{foodcomment_params[:food_id]}"
    end
  end
  private
  def foodcomment_params
    params.require(:foodcomment).permit(:content,:user_id, :food_id)
  end
  end