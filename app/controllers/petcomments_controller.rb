class PetcommentsController < ApplicationController
  def create
    @petcomment = Petcomment.new(petcomment_params)
    if @petcomment.save
      redirect_to "/petprofile/pets/#{petcomment_params[:pet_id]}"
    else
      flash[:errors] = @petcomment.errors.full_messages
      redirect_to "/petprofile/pets/#{petcomment_params[:pet_id]}"
    end
  end
  private
  def petcomment_params
    params.require(:petcomment).permit(:content,:user_id, :pet_id)
  end
end
