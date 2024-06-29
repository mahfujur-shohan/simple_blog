class BlogPostsController < ApplicationController
    def index
        @blogs = BlogPost.all
    end
end