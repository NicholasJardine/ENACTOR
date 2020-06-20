class UsersController < ApplicationController
  def show
    @user = current_user
    @u = User.find(params[:id])
  end
end
