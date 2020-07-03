class UsersController < ApplicationController
    skip_before_action :authenticate_user!

  def show
    @user = current_user
    @u = User.find(params[:id])
    @private_brief = PrivateBrief.new
  end
end
