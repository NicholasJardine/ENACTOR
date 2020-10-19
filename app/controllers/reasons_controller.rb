class ReasonsController < ApplicationController

    def create
      @user = current_user
    @reason = Reason.create!(reason_params)
   #  @production_company = ProductionCompany.find(params[:id])
   # # @reason.user = current_user
   #  @reason.production_company = @production_company
    if @reason.save

      redirect_to dashboard_path(@user)
    else
      render :new
    end
  end


  private

    def reason_params
    params.require(:reason).permit(:human_trafficking, :not_legit, :unsafe, :child_abuse, :sexual_content, :user_id, :brief_id)
  end

end
