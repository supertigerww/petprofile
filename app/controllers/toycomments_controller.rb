class ToycommentsController < ApplicationController
  def create
    @toycomment = Toycomment.new(toycomment_params)
    if @toycomment.save
      redirect_to "/petprofile/toys/#{toycomment_params[:toy_id]}"
    else
      flash[:errors] = @toycomment.errors.full_messages
      redirect_to "/petprofile/toys/#{toycomment_params[:toy_id]}"
    end
  end
  private
  def toycomment_params
    params.require(:toycomment).permit(:content,:user_id, :toy_id)
  end
end
