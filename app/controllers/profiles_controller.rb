class ProfilesController < ApplicationController

  # def show
  #   @profile = Profile.where( :user_id == current_user.id)
  #   # @user = current_user
  #   # @profile = Profile.where(user: current_user)
  # end


def show
  @user = current_user

end
  def new
    @user = current_user
    @profile = Profile.new
  end

  # def create
  #   @profile = Profile.new(profile_params)
  #   @profile.save
   #  @production_company = ProductionCompany.find(params[:id])
   # # @profile.user = current_user
   #  @profile.production_company = @production_company
    # if @profile.save

      def create
    @profile = Profile.new(profile_params)

    if @profile.save
      redirect_to @profile, notice: 'profile was successfully created.'
    else
      render :new
    end
  # end

    #   redirect_to profile_path(@profile)
    # else
    #   render :new
    # end
  end


  # def update
  # end

  # def delete
  # end


  private

  def profile_params
    params.require(:profile).permit(:name, :race, :age, :gender, :ethnicty, :language, :photo)
  end

end


# class ProfilesController < ApplicationController
#   def create
#     @profile = Profile.new(profile_params)
#     @profile.user_id = current_user.id
#     @profile.save
#     respond_with(@profile)
#   end
# end

  # def show
  #   @lobby = Lobby.find(params[:lobby_id])
  #   @session = Session.find(params[:id])
  #   @user_invite = UserInvite.new
  #   @users = User.all
  #   @message = Message.new
  # end

  # def new
  #   @session = Session.new
  #   @lobby = Lobby.find(params[:lobby_id])
  # end

  # def create
  #   @session = Session.new(session_params)
  #   @lobby = Lobby.find(params[:lobby_id])
  #   @session.user = current_user
  #   @session.lobby = @lobby
  #   if @session.save
  #     @session.user.wallet -= @session.price
  #     @session.win_price += @session.price
  #     @session.user.save
  #     @session.save
  #     redirect_to lobby_session_path(@lobby, @session)
  #   else
  #     render :new
  #   end
  # end


  # @pr
  # @user = current_user
  # @profile.user = @user
