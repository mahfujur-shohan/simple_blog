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
        @blog = BlogPost.find(params[:id])
    end

    def update
        @blog = BlogPost.find(params[:id])

        if @blog.update(blog_params)
            redirect_to @blog
        else
            render :edit
        end
    end

    def destroy
        @blog = BlogPost.find(params[:id])
        @blog.destroy

        redirect_to root_path
    end

    private

    def blog_params
        params.require(:blog_post).permit(:title, :body)
    end
end