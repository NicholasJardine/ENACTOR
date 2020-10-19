class PbreasonsController < ApplicationController


    def create
      @user = current_user
    @pbreason = Pbreason.create!(pbreason_params)
   #  @production_company = ProductionCompany.find(params[:id])
   # # @reason.user = current_user
   #  @reason.production_company = @production_company
    if @pbreason.save

      redirect_to dashboard_path(@user)
    else
      render :new
    end
  end


  private

    def pbreason_params
    params.require(:reason).permit(:human_trafficking, :not_legit, :unsafe, :child_abuse, :sexual_content, :user_id, :brief_id)
  end

end
