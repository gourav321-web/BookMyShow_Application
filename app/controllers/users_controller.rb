class UsersController < ApplicationController
  before_action :set_user, only: [:profile, :edit_profile, :update_profile]
  def new
  end

  def create
  end

  def profile
  end

  def edit_profile
  end

  def update_profile
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :digest_password :profile_picture, )
  end
end
