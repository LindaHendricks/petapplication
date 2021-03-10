class RentersController < ApplicationController
    def new_user
        @renter = Renter.new
    end

    def welcome
        @renters = Renter.all
    end

    def create
        @renter = Renter.create(new_renter_params)
        session[:renter_id] = @renter.id
        redirect_to '/pets/index'
    end

    def handle_login
        @renter = Renter.find_by(username: params[:username])
        if @renter && @renter.authenticate(params[:password])
            session[:renter_id] = @renter.id
            redirect_to "/pets/index"
        else
            redirect_to login_path
        end
    end

    def profile        
        @renters = Renter.all
        @bookings = Booking.all
        current_renter = Renter.find_by(username: params[:username])        
       byebug
    end
 
    private

    def new_renter_params
        params.require(:renter).permit(:name, :address, :age, :phone_number, :username, :password)
    end
end
