class PostsController < ApplicationController
  def index
  end

  def show
    @user = current_user
    @profile = Profile.where(user_id: @user.id)
    @post = Post.find(params[:id])
  end

  def new
    @user = current_user
    @post = Post.new
    @profile = Profile.where(user_id: @user.id)
  end

  def create
    @user = current_user
    @profile = Profile.where(user_id: @user.id)

    @post = Post.new(post_params)
    if @post.save
      redirect_to profile_path(@profile)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @user = current_user
    @profile = Profile.where(user_id: @user.id)
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to profile_path(@profile)

  end

    def delete_post
    @user = current_user
    @profile = Profile.where(user_id: @user.id)
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to profile_path(@profile)
    end

  private

  def post_params
    params.require(:post).permit(:image, :user_id, :caption)
  end
end
