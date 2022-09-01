class UserController < ApplicationController
  def create
    @user = User.new(params.require(:user).permit(:username, :email))
    # ...
  end

  # private
  #
  # def user_params
  #   params.require(:user).permit(:name, :email)
  # end
end
