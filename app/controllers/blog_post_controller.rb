class BlogPostController < ApplicationController
    
    def index
        @posts = BlogPost.all
    end
end
