class UserAuditionsController < ApplicationController

  def create
    # MOVED THIS TO SESSIONS CONTROLLER INSIDE OF THE JOINING_SESSION

    @brief = Brief.find(params[:lobby_id])
    @audition = Audition.find(params[:audition_id])
    @user_audition = UserAudition.new
    @user_audition.user = User.find(params[:user_audition][:user].to_i)
    @user_audition.audition = @audition
    @user_audition.save
    redirect_to brief_audition_path(@brief, @audition)
  end

  def destroy
    @user_audition = UserAudition.find(params[:id])
    @user_audition.destroy
  end

  def accept
    @audition = audition.find(params[:audition_id])
    @user_audition = UserAudition.find(params[:user_audition_id])
    @user_audition.status = 'accepted'
    @user_audition.save
    @audition.status = 'in progress'
    @audition.save
    @user_audition.user.save
    redirect_to dashboard_path(current_user)
  end

  def decline
    @audition = audition.find(params[:audition_id])
    @user_audition = UserAudition.find(params[:user_audition_id])
    @user_audition.status = "declined"
    @user_audition.save
    redirect_to dashboard_path(current_user)
  end
end
=begin
  def cancel
    @audition = audition.find(params[:session_id])
    @user_audition = UserAudition.find(params[:user_audition_id])
    @user_audition.user.wallet += @audition.price
    @user_audition.user.save
    @user_audition.destroy
    redirect_to dashboard_path(current_user)
  end=end
end
  def accept
    @session = Session.find(params[:session_id])
    @user_invite = UserInvite.find(params[:user_invite_id])
    @user_invite.status = 'accepted'
    @user_invite.save
    @session.status = 'in progress'
    @session.save
    @user_invite.user.wallet -= @session.price
    @user_invite.user.save
    redirect_to dashboard_path(current_user)
  end

  def decline
    @session = Session.find(params[:session_id])
    @user_invite = UserInvite.find(params[:user_invite_id])
    @user_invite.status = "declined"
    @user_invite.save
    redirect_to dashboard_path(current_user)
  end
