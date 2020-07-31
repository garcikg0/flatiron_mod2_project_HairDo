class ApplicationController < ActionController::Base

  helper_method :current_client, :logged_in?, :require_client 

 def current_client
   @current_client ||= Client.find(session[:client_id]) if session[:client_id]
 end

 def logged_in?
   !!current_client
 end

 def require_client
   if !logged_in?
     flash[:alert] = "You must be logged in to perform that action"
     redirect_to login_path
   end
 end

end
