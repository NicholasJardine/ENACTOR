class AuditionsController < ApplicationController

  def show
    @user = current_user
    @audition = Audition.find(params[:id])
    @submitter= User.where(id: @audition.user_id)
    @submitter2= User.where(id: @submitter.ids[0])

    @submitter.ids[0]
    # @brief = Brief.find(params[:brief_id])
    # video = Cloudinary::Uploader.upload(params[:video], :resource_type => :video)
    # @item = Audition.create!(video: video["url"], title: @audition.title, brief_id: @audition.brief_id)

    # @user_invite = UserInvite.new
    @users = User.all

    # @message = Message.new
  end

  def new
    @audition = Audition.new
    @brief = Brief.find(params[:brief_id])
  end

  def create
    @user = current_user
    @audition = Audition.new(audition_params)
    # video = Cloudinary::Uploader.upload(params[:video], :resource_type => :video)
    # @item = Audition.create!(video: video["url"], title: @audition.title, brief_id: @audition.brief_id)
    @audition.user_id = current_user.id

    if @audition.save
      redirect_to audition_path(@audition)
      # render json: item
    else
      render :new
    end
  end

  def destroy
    @audition = Audition.find(params[:id])
    @audition.destroy
    redirect_to brief_path(@audition.brief)
  end

  def review_audition
    @audition = Audition.find(params[:audition_id])
    @brief = Brief.find(@audition.brief_id)
    @user_audition = UserAudition.new
    @user_audition.user = current_user
    @user_audition.audition = @audition
    @user_audition.save
  end
  # def agreed
  #   @lobby = Lobby.find(params["lobby_id"])
  #   @session = Session.find(params["session_id"])
  #   if @session.score1 > @session.score2
  #     @session.winner = @session.user.username
  #     @session.user.wallet += @session.win_price
  #     @session.user.save
  #   elsif @session.score1 < @session.score2
  #     @winner = @session.user_invites.first.user
  #     @session.winner = @winner.username
  #     @winner.wallet += @session.win_price
  #     @winner.save
  #   end
  #   @session.status = "agreed"
  #   @session.save
  #   redirect_to lobby_session_path(@lobby, @session)
  # end

  # def joining_session
  #   # REMOVING MONEY FROM THE WALLET AND ADD IT TO PRICE
  #   @session = Session.find(params[:session_id])
  #   @lobby = Lobby.find(@session.lobby_id)
  #   if current_user.wallet > @session.price
  #     current_user.wallet -= @session.price
  #     @session.win_price += @session.price
  #     @session.save
  #     current_user.save
  #     # CREATING A USER INVITE
  #     @user_invite = UserInvite.new
  #     @user_invite.user = current_user
  #     @user_invite.session = @session
  #     @user_invite.save
  #   else
  #     # random comment
  #     flash[:alert] = 'Not enough money'
  #   end
  #   redirect_to lobby_session_path(@lobby, @session)

  # end

  private

  def audition_params
    params.require(:audition).permit(:video, :title, :brief_id, :user_id)
  end

end
