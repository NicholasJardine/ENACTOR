class DashboardsController < ApplicationController
  def show
    @user = current_user
    @reasons = Reason.all
    @pbreasons = Pbreason.all
    # @brief = Brief.find(params[:id])
    # @auditions = Audition.where(brief_id: @brief.id)
    @matching_briefs = Brief.where(ethnicty: @user.ethnicty).where(gender: @user.gender).where(age_range: @user.age_range).where(status: "Pending")
    @current_matching_briefs = Brief.where(ethnicty: @user.ethnicty).where(gender: @user.gender).where(age_range: @user.age_range).where(status: "Pending")
        @province_briefs = Brief.where(ethnicty: @user.ethnicty).where(gender: @user.gender).where(age_range: @user.age_range).where(status: "Pending").where(province: @user.province)



    @province_briefs = @province_briefs.reject{ |brief| brief.province == nil }

    @my_briefs = Brief.where(user_id: @user.id)
    # @my_accepted_briefs = UserBrief.where(user: current_user).where(status: "accepted").map { |ui| ui.brief }

     #@not_accepted_briefs = UserBrief.where(status: "Pending").map { |ui| ui.brief.where }


    @accepted = Application.where(user_id: current_user.id).where(status: "accepted").map { |application| application.user_brief.brief }
    @declined = Application.where(user_id: current_user.id).where(status: "declined").map { |application| application.user_brief.brief }
    @deleted = Application.where(user_id: current_user.id).where(status: "deleted").map { |application| application.user_brief.brief }

    @accepted.each do |brief|
      if @accepted.include?(brief)
         @matching_briefs = @matching_briefs.reject{ |brief| @accepted.include?(brief) }

      end
    end

      @matching_briefs.reject{ |brief| @accepted.include?(brief) }

    @declined.each do |brief|
      if @declined.include?(brief)
         @matching_briefs = @matching_briefs.reject{ |brief| @declined.include?(brief) }
      end
    end

      @deleted.each do |brief|
      if @deleted.include?(brief)
         @matching_briefs = @matching_briefs.reject{ |brief| @deleted.include?(brief) }
      end
    end

      @deleted.each do |brief|
      if @deleted.include?(brief)
         @accepted = @accepted.reject{ |brief| @deleted.include?(brief) }
      end
    end

    @deleted.each do |brief|
      if @deleted.include?(brief)
         @declined = @declined.reject{ |brief| @deleted.include?(brief) }
      end
    end
    @myauditions = Audition.where(user_id: current_user.id)
    @my_private_auditions = PrivateAudition.where(user_id: current_user.id)

    @my_private_briefs = PrivateBrief.where(user_id: @user.id).where(status: "Pending")
    @my_pendings = Audition.where(user_id: current_user.id).where(status: "Pending")
    @invite_briefs = PrivateBrief.where(sender_id: @user.id.to_i)
     # @auditions = UserInvite.where(user: current_user).where(status: "Pending").map { |ui| ui.audition }
     # @accepted_auditions= UserInvite.where(user: current_user).where(status: "accepted").map { |ui| ui.session }
     # @alls = @myauditions + @accepted_auditions
     # @inprogress_auditions = @alls.select { |audition| audition.status == "in progress" || audition.status == "finished" }
     # @finished_auditions = @alls.select { |audition| audition.status == "agreed" }
         @my_private_briefs_accepted = PrivateBrief.where(user_id: @user.id).where(status: 'accepted')

    @accepted_pbs = Acceptance.where(user_id: current_user.id).where(status: "accepted").map { |acceptance| acceptance.private_invite.private_brief }
    @declined_pbs = Acceptance.where(user_id: current_user.id).where(status:"declined").map { |acceptance| acceptance.private_invite.private_brief }
    @deleted_pbs = Acceptance.where(user_id: current_user.id).where(status:"deleted").map { |acceptance| acceptance.private_invite.private_brief }

      @accepted_pbs.each do |brief|
      if @accepted_pbs.include?(brief)
         @my_private_briefs = @my_private_briefs.reject{ |brief| @accepted_pbs.include?(brief) }
      end
    end

      @declined_pbs.each do |brief|
      if @declined_pbs.include?(brief)
         @my_private_briefs = @my_private_briefs.reject{ |brief| @declined_pbs.include?(brief) }
      end
    end
    @deleted_pbs.each do |brief|
      if @deleted_pbs.include?(brief)
         @my_private_briefs = @my_private_briefs.reject{ |brief| @deleted_pbs.include?(brief) }
      end
    end

          @deleted_pbs.each do |brief|
      if @deleted_pbs.include?(brief)
         @accepted_pbs = @accepted_pbs.reject{ |brief| @deleted_pbs.include?(brief) }
      end
    end

    @deleted_pbs.each do |brief|
      if @deleted_pbs.include?(brief)
         @declined_pbs = @declined_pbs.reject{ |brief| @deleted_pbs.include?(brief) }
      end
    end


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
