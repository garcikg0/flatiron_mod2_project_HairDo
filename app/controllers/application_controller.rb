class ApplicationController < ActionController::Base
    helper_method :current_stylist 
    helper_method :current_client

    def current_stylist
        session[:stylist] ||= []
    end

    def current_client
        session[:client] ||= []
    end
end
