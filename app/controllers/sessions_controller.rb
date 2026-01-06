class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
  end

  def destroy
  end

  private

  def user_params
    params.require(:session).permit(:email, digest_password)
end
