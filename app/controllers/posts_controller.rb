class PostsController < ApplicationController
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
            redirect_to post_path(@post)
        else 
            render :new
        end 
    end 

    private 

    def post_params
        params.require(:post).permit(:content, :title, :staff_id, :category_id)
    end 
end
