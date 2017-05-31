class PostsController < ApplicationController
   
    def index
        @posts = Post.all
    end


    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        if @post.save
           flash[:notice] = "Successfully created post!"
            redirect_to post_path(@post) 
     
        else
           flash[:alert] = "Error creating new post!"
            render :new
      
        end
    end
    

    def show
        @post = Post.find(params[:id])
    end

    def destroy
        
    end

    private

    def post_params
        params.require(:post).permit(:title, :body)
    end
end
