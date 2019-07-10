class StaffsController < ApplicationController
    # before_action :confirm_logged_in
    def index
        @staffs = Staff.all
    end

    def show
        @staff = Staff.find(params[:id])
    end
end
