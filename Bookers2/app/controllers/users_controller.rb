class UsersController < ApplicationController
  def top
  end

  def about
  end

  def index
    @users = User.all
    @user = current_user
    @book = Book.new
  end

  def show
  	 @user = User.find(params[:id])
  	 @book = Book.new
     @books_user = Book.where(user_id: params[:id])
  end

  def edit
        @user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

private
	def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
	end

end
