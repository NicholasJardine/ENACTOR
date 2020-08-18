class PrivateBriefsController < ApplicationController
  def show
    @user = current_user
    @private_brief = PrivateBrief.find(params[:id])
    @private_audition = PrivateAudition.new
    @auditions = PrivateAudition.where(private_brief_id: @private_brief.id)
  end

  def new
    @private_brief = PrivateBrief.new
  end

  def create
    @brief = PrivateBrief.create!(private_brief_params)
    @private_invite = PrivateInvite.create!(user_id: current_user.id, private_brief_id: @brief.id, status:"Pending")

   #  @production_company = ProductionCompany.find(params[:id])
   # # @brief.user = current_user
   #  @brief.production_company = @production_company
    if @brief.save

      redirect_to private_brief_path(@brief)
    else
      render :new
    end
  end

  # def edit
  #   if params['button_action'] == 'accept'
  #    @private_brief.status = 'accepted'
  #    @private_brief.save
  #   else
  #    @private_brief.status = 'declined'
  #    @private_brief.save
  #   end
  # end

  # def update
  #       @brief = PrivateBrief.find(params[:id])
  #       @brief.update(private_brief_params)

  #     if params['button_action'] == 'accept'
  #    @private_brief.status = 'accepted'
  #    @private_brief.save
  #   else
  #    @private_brief.status = 'declined'
  #    @private_brief.save
  #   end
  #   # @session.status = 'in progress'
  #   # @session.save
  #   # @user_invite.user.wallet -= @session.price
  #   # @user_invite.user.save

  #   redirect_to dashboard_path(current_user)
  # end

  # def accept
  #   @private_brief = private_brief.find(params[:id])
  #   @user_invite = UserInvite.find(params[:user_invite_id])
  #   @user_invite.status = 'accepted'
  #   @user_invite.save
  #   @private_brief.status = 'in progress'
  #   @private_brief.save
  #   @user_invite.user.wallet -= @private_brief.price
  #   @user_invite.user.save
  #   redirect_to dashboard_path(current_user)
  # end


  def decline
    @private_brief = PrivateBrief.find(params[:id])
  #   @user_invite = UserInvite.find(params[:user_invite_id])
    @private_brief.status = "declined"
    @private_brief.save
    redirect_to dashboard_path(current_user)
  end


  private

  def private_brief_params
    params.require(:private_brief).permit(:title, :name, :age, :gender, :ethnicty, :language, :sender_id, :user_id, :status, :scene)
  end


end
