class BlogsController < ApplicationController
  def top
  end

  def index
    @blogs = Blog.all
    @blog = Blog.new
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def create
    blog = Blog.new(blog_params)
    blog.save
    redirect_to blog_path(blog.id)
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    blog = Blog.find(params[:id])
    blog.update(blog_params)
    redirect_to blog_path(blog.id)
  end

  def destroy
    blog = Blog.find(params[:id])
    if blog.destroy
      flash[:success] = "Book was successfully destroyed(^o^)/"
    redirect_to "/blogs"
  end
  end

  private

  def blog_params
      params.require(:blog).permit(:title, :category, :body)
  end
end
