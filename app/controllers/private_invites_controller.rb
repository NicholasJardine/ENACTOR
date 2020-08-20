class PrivateInvitesController < ApplicationController
  #     def accept_private__brief
  #   @user = current_user
  #   @matching_briefs = Brief.where(ethnicty: @user.ethnicty).where(gender: @user.gender).where(age_range: @user.age_range).where(status: "Pending")

  #   @brief = PrivateBrief.find(params[:private_brief_id])
  #   @invite = PrivateInvite.find(params[:private_brief_id])
  #   @application = Application.create!(user_id: current_user.id, private_invite_id: @invite.id)
  #   @accepted = Application.where(user_id: current_user.id).map { |application| application.user_brief.brief }

  #   @matching_briefs.each do |brief|
  #     if @accepted.include?(brief)
  #         @matching_briefs.reject{ |brief| @accepted.include?(brief) }
  #     end
  #   end

  #   # @invite.status = 'accepted'
  #   # @invite.user = current_user
  #   # @invite.save
  #   # @private_brief.status = 'in progress'
  #   # @private_brief.save
  #   # @invite.user.save
  #   redirect_to dashboard_path(current_user)
  # end

  def accept
    @private_brief = PrivateBrief.find(params[:private_brief_id])
    @private_invite = PrivateInvite.find(params[:private_invite_id])
    @private_invite.status = 'accepted'
    @private_invite.save
    @private_brief.status = 'accepted'
    @private_brief.save
    @private_invite.user.save
    @acceptance = Acceptance.create!(user_id: current_user.id, private_invite_id: @private_invite.id, status:"accepted")

    redirect_to dashboard_path(current_user)
  end

  def decline
    @private_brief = PrivateBrief.find(params[:private_brief_id])
    @private_invite = PrivateInvite.find(params[:private_invite_id])
    @private_invite.status = 'decined'
    @private_invite.save
    @private_brief.status = 'declined'
    @private_brief.save
    @private_invite.user.save
    @declination = Acceptance.create!(user_id: current_user.id, private_invite_id: @private_invite.id, status:"declined")

    redirect_to dashboard_path(current_user)

  end

end
