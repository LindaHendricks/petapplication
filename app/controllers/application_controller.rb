class ApplicationController < ActionController::Base
    before_action :authorized
    helper_method :current_renter
    helper_method :logged_in?

        def current_renter
            Renter.find_by(id: session[:renter_id])
        end

        def logged_in?
            
            !current_renter.nil?
        end

        def authorized
        #    redirect_to '/index' unless logged_in?
        end
    end