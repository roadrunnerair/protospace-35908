class UsersController < ApplicationController

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
    @comments = current_user.comments
    @user = User.find(params[:id])
    @prototypes = Prototype.all
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :name, :profile, :occupation, :position)
  end
end