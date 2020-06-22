class DashboardsController < ApplicationController
  def show
    @user = current_user
    @matching_briefs = Brief.where(ethnicty: @user.ethnicty).where(gender: @user.gender).where(age: @user.age)

  #   @myauditions = Session.where(user: current_user)
  #   @sessions = UserInvite.where(user: current_user).where(status: "Pending").map { |ui| ui.session }
  #   @accepted_sessions = UserInvite.where(user: current_user).where(status: "accepted").map { |ui| ui.session }
  #   @alls = @mysessions + @accepted_sessions
  #   @inprogresssessions = @alls.select { |session| session.status == "in progress" || session.status == "finished" }
  #   @finished_sessions = @alls.select { |session| session.status == "agreed" }
   end
end
