class StaffsController < ApplicationController
    # before_action :confirm_logged_in
    def index
        @staffs = Staff.all
    end

    def show
        @staff = Staff.find(params[:id])
    end

    def new
        @staff = Staff.new 
    end

    def create
        @staff = Staff.new(staff_params)
        if @staff.valid?
            @staff.save 
            session[:user_id] = @staff.id
            redirect_to posts_path
        else 
            redirect_to signup_path
        end 
    end 

    private

    def staff_params
        params.require(:staff).permit(:username, :name, :password, :title)
    end 
end
