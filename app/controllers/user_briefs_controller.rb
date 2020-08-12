class UserBriefsController < ApplicationController
    def accept_brief
    @brief = Brief.find(params[:brief_id])
    @user_brief = UserBrief.find(params[:user_brief_id])
    @application = Application.create!(user_id: current_user.id, user_brief_id: @user_brief.id)
    @user_brief.status = 'accepted'
    @user_brief.user = current_user
    @user_brief.save
    @brief.status = 'in progress'
    @brief.save
    @user_brief.user.save
    redirect_to dashboard_path(current_user)
  end

  def decline_brief
    @brief = Brief.find(params[:brief_id])
    @user_brief = UserBrief.find(params[:user_brief_id])
    @user_brief.status = "declined"
    @user_brief.save
    redirect_to dashboard_path(current_user)
  end
end
