class PostsController < ApplicationController
    # before_action :confirm_logged_in
    def index
        @posts = Post.all
    end 

    def show
        @post = Post.find(params[:id])
    end 

    def new
        @post = Post.new
    end 

    def create 
        # binding.pry
        @post = Post.new(post_params)
        if  @post.save 
            redirect_to posts_path
        else 
            render :new
        end 
    end 

    def destroy
        Post.find(params[:id]).destroy
        redirect_to posts_path
      end

    private 

    def post_params
        params.require(:post).permit(:content, :title, :staff_id, :category_id)
    end 
end
