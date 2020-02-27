class BlogsController < ApplicationController
  def new 
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.save
    redirect_to @blog
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def index
    @blogs = Blog.all
  end

  def edit
    @blog = Blog.find(params[:id])
  end 

  def update
    @blog = Blog.find(params[:id])
    @blog.update(blog_params)
    redirect_to @blog
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to root_path
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :text)
  end
end
