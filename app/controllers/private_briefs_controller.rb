class PrivateBriefsController < ApplicationController
  def show
    @user = current_user
    @private_brief = PrivateBrief.find(params[:id])
    @private_audition = PrivateAudition.new
    @auditions = PrivateAudition.where(private_brief_id: @private_brief.id)
  end

  def new
    @private_brief = PrivateBrief.new
  end

  def create
    @brief = PrivateBrief.create!(private_brief_params)
   #  @production_company = ProductionCompany.find(params[:id])
   # # @brief.user = current_user
   #  @brief.production_company = @production_company
    if @brief.save

      redirect_to private_brief_path(@brief)
    else
      render :new
    end
  end



  private

  def private_brief_params
    params.require(:private_brief).permit(:title, :name, :age, :gender, :ethnicty, :language, :sender_id, :user_id)
  end


end
