class SolutionsController < ApplicationController
  # before_action :confirm_logged_in
  
    def show
        @solution = Solution.find(params[:id])
    end

    def new
      @post = Post.find(params[:post_id])
        @solution = Solution.new
      end
    
      def create
        @post = Post.find(params[:solution][:post_id])
        @solution = Solution.new(solution_params)
          if @solution.save
            redirect_to posts_path
          else
            render :new
          end
      end

      private
      
      def solution_params
        params.require(:solution).permit(:content, :staff_id, :post_id)
      end 
end
