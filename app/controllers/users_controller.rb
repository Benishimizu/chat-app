class UsersController < ApplicationController
  def edit
  end

  def update
    # current_user.update(user_params)
      # https://master.tech-camp.in/v2/curriculums/4843     
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

  # https://master.tech-camp.in/v2/curriculums/4842
end
