class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = user.find(params[:id])
    @books = @user.books
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])

    if user.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(user.id)
    else

    end

  end

end
