class PostsController < ApplicationController
    def index
        @posts = Post.all
    end 

    def new
        @post = Post.new
    end 

    def create 
        # binding.pry
        @post = Post.new
        if  @post.save 
            redirect_to post_path(@post)
        else 
            render :new
        end 
    end 

    private 

    def post_params
        params.require(:post).permit(:content, :title, :staff_id)
    end 
end
