class PetsController < ApplicationController

    def petslist
        @pets = Pet.all
        @pets = Pet.search(params[:search])
    end

    def allpets
        @pets = Pet.all
    end 

    def show
        @pet = Pet.find(params[:id])
    end

    private

    def pet_params
        params.require(:pet).permit(:name, :pet, :search)
    end
end
