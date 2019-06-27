class SolutionsController < ApplicationController

    def show
        @solution = Solution.find(params[:id])
    end

    def new
        @solution = Solution.new
      end
    
      def create

        @solution = Solution.new(solution_params)
          if @solution.save
            redirect_to solution_path(@solution)
          else
            render :new
          end
      end

      private
      
      def solution_params
        params.require(:solution).permit(:content, :staff_id, :post_id)
      end 
end
