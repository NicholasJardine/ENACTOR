class AccountComplaintsController < ApplicationController

    def create
      @user = current_user
    @account_complaint = AccountComplaint.create!(account_complaint_params)
   #  @production_company = ProductionCompany.find(params[:id])
   # # @account_complaint.user = current_user
   #  @account_complaint.production_company = @production_company
    if @account_complaint.save

      redirect_to cancel_path
    else
      render :new
    end
  end


  private

    def account_complaint_params
    params.require(:account_complaint).permit(:career_changes, :not_recieving_briefs, :dont_like_it, :not_useful, :unsatisfied, :user_id)
  end

end
