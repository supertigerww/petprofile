class FoodsController < ApplicationController
  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      foodid = Food.find_by(name:food_params[:name]).id
      pet = Pet.find(params[:pet_id])
      pet.update(food_id:foodid)
      redirect_to "/petprofile/home"
    else
      flash[:errors] = @food.errors.full_messages
      redirect_to "/petprofile/#{params[:pet_id]}/food/new"
    end
  end

  def all
  end

  def show
    @food = Food.find(params[:foodid])
  end

  private
    def food_params
      params.require(:food).permit(:name,:link,:image,:description)
    end
end
