class ApplicationController < ActionController::Base
    helper_method :current_user

  def current_user
    if @current_user.nil?
      @current_user = Staff.find(session[:user_id])
    else
      @current_user
    end
  end
    private 

    def confirm_logged_in
      unless session[:user_id]
        flash[:notice] = "Please log in."
        redirect_to(access_login_path)
      end
    end

end
