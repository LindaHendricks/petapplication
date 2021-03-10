class PetsController < ApplicationController
    def index 

    end 
    
    def new
        @bookthispet = Pet.new
        @pets = Pet.all
        @renters = Renter.all
        #@errors = flash[:errors] 
    end 

    def create
        new_pet_booking = Pet.create(pet_params)
        # if new_booking.valid?
        redirect_to bookings_path
        # else
        #     flash[:errors] = new_booking.errors.full_messages
        #     redirect_to new_booking_path
        # end 
    end 
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
        params.require(:pet).permit(:name, :age, :description, :color, :breed_id, :picture, :location)
    end
end
