class PetsController < ApplicationController
    before_action :user_authorized, only: [:new, :create, :home]
    def home
        @pets = Pet.all
    end

    def new
        @pet = Pet.new
        currentuser = current_user()
    end

    def create
        @pet = Pet.new(pet_params)
        if @pet.save
            petid = Pet.find_by(name:pet_params[:name]).id
            redirect_to "/petprofile/#{petid}/toys/new"
        else
            flash[:errors] = @pet.errors.full_messages
            redirect_to "/petprofile/new"
        end
    end

    def show
        @pet = Pet.find(params[:petid])
    end

    private
    def pet_params
        params.require(:pet).permit(:name, :species, :breed, :gender,:birthdate,:image, :description, :user_id)
    end
end
