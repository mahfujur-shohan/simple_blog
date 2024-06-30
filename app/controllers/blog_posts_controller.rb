class BlogPostsController < ApplicationController
    def index
        @blogs = BlogPost.all
    end

    def show
        @blog = BlogPost.find(params[:id])
    end

    def new
        @blog = BlogPost.new
    end

    def create
        @blog = BlogPost.new(blog_params)

        if @blog.save
            redirect_to @blog
        else
            render :new
        end
    end

    def edit
    end

    private

    def blog_params
        params.require(:blog_post).permit(:title, :body)
    end
end