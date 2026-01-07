class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.find_by(email: params[:email])

    # Authenticate the user's password using the built-in 'authenticate' method
    if user&.authenticate(params[:password])
      # Log the user in and redirect
      session[:user_id] = user.id
      redirect_to root_path, notice: "Logged in successfully!"
    else
      # Display an error message and re-render the form
      flash.now[:alert] = "Invalid email or password"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    # Log the user out
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out!"
  end

  private

  def user_params
    params.require(:session).permit(:email, digest_password)
  end
end
