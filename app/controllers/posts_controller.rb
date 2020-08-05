class PostsController < ApplicationController
  def index
  end

  def show
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
  end


  private

  def post_params
    params.require(:post).permit(:image)
  end
end
