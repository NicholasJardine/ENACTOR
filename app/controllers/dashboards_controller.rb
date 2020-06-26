class DashboardsController < ApplicationController
  def show
    @user = current_user
    # @brief = Brief.find(params[:id])
    # @auditions = Audition.where(brief_id: @brief.id)
    @matching_briefs = Brief.where(ethnicty: @user.ethnicty).where(gender: @user.gender).where(age: @user.age)
    @myauditions = Audition.where(user_id: current_user.id)
    @my_pendings = Audition.where(user_id: current_user.id).where(status: "Pending")

     # @auditions = UserInvite.where(user: current_user).where(status: "Pending").map { |ui| ui.audition }
     # @accepted_auditions= UserInvite.where(user: current_user).where(status: "accepted").map { |ui| ui.session }
     # @alls = @myauditions + @accepted_auditions
     # @inprogress_auditions = @alls.select { |audition| audition.status == "in progress" || audition.status == "finished" }
     # @finished_auditions = @alls.select { |audition| audition.status == "agreed" }
   end
end
