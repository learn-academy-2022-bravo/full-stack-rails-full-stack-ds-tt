class BlogPostController < ApplicationController
    
    def index
        @posts = BlogPost.all
    end

    def show
        @post = BlogPost.find(params[:id])
    end
end
