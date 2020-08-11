class DashboardsController < ApplicationController
  def show
    @user = current_user
    # @brief = Brief.find(params[:id])
    # @auditions = Audition.where(brief_id: @brief.id)
    @matching_briefs = Brief.where(ethnicty: @user.ethnicty).where(gender: @user.gender).where(age_range: @user.age_range).where(status: "Pending")
    @my_briefs = Brief.where(user_id: @user.id)
    @my_accepted_briefs = UserBrief.where(user: current_user).where(status: "accepted").map { |ui| ui.brief }


    @myauditions = Audition.where(user_id: current_user.id)
    @my_private_auditions = PrivateAudition.where(user_id: current_user.id)

    @my_private_briefs = PrivateBrief.where(user_id: @user.id)
    @my_pendings = Audition.where(user_id: current_user.id).where(status: "Pending")
    @invite_briefs = PrivateBrief.where(sender_id: @user.id.to_i)
     # @auditions = UserInvite.where(user: current_user).where(status: "Pending").map { |ui| ui.audition }
     # @accepted_auditions= UserInvite.where(user: current_user).where(status: "accepted").map { |ui| ui.session }
     # @alls = @myauditions + @accepted_auditions
     # @inprogress_auditions = @alls.select { |audition| audition.status == "in progress" || audition.status == "finished" }
     # @finished_auditions = @alls.select { |audition| audition.status == "agreed" }
         @my_private_briefs_accepted = PrivateBrief.where(user_id: @user.id).where(status: 'accepted')

   end

    def request_decision
     @private_brief = PrivateBrief.find(params[:private_brief_id])

     if params['button_action'] == 'accept'
     @private_brief.status = 'accepted'
     @private_brief.save
    else
     @private_brief.status = 'declined'
     @private_brief.save
    end
    # @session.status = 'in progress'
    # @session.save
    # @user_invite.user.wallet -= @session.price
    # @user_invite.user.save

    redirect_to dashboard_path(current_user)
  end

  def decline
    # @session = Session.find(params[:session_id])
    # @user_invite = UserInvite.find(params[:user_invite_id])
    # @user_invite.status = "declined"
    # @user_invite.save
    # redirect_to dashboard_path(current_user)
  end
end
