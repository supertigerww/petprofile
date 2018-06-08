class ToysController < ApplicationController
  before_action :user_authorized, only: [:new, :all ,:show, :create]
  def new
    @toy = Toy.new
  end

  def create
    @toy = Toy.new(toy_params)
    if @toy.save
      toyid = Toy.find_by(name:toy_params[:name]).id
      pet = Pet.find(params[:pet_id])
      pet.update(toy_id:toyid)
      redirect_to "/petprofile/#{params[:pet_id]}/food/new"
    else
      flash[:errors] = @toy.errors.full_messages
      redirect_to "/petprofile/#{params[:pet_id]}/toys/new"
    end
  end

  def show
    @toy = Toy.find(params[:toyid])
  end

  def all
    @toys = Toy.all
  end

  private
    def toy_params
      params.require(:toy).permit(:name,:link,:image, :description)
    end
end
