class UsersController < ApplicationController
    skip_before_action :authenticate_user!


  def show
    @user = current_user
    @u = User.find(params[:id])
    @private_brief = PrivateBrief.new
    @posts = Post.where(user_id: @u.id)
  @my_posts = Post.where(user_id: @user.id)

  end




def destroy
  @u = User.find(params[:id])
  @u.destroy!
  redirect_to pages_searching_path
end

end

