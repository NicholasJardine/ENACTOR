class BriefsController < ApplicationController

  def show

    @user = current_user
    # @production_company = ProductionCompany.find(params[:production_company_id])
    @brief = Brief.find(params[:id])
    @audition = Audition.new
    @auditions = Audition.where(brief_id: @brief.id)
  end


  def new
    @user = current_user
    @brief = Brief.new
    # @production_company = ProductionCompany.where(:id == current_user.id)
  end

  def create
    @brief = Brief.create!(brief_params)
    @user_brief = UserBrief.create!(user_id: current_user.id, brief_id: @brief.id, status:"Pending")

   #  @production_company = ProductionCompany.find(params[:id])
   # # @brief.user = current_user
   #  @brief.production_company = @production_company
    if @brief.save

      redirect_to brief_path(@brief)
    else
      render :new
    end
  end

  def join_brief_auditions
    @brief = Brief.find(brief_id)
    @user_brief = UserBrief.new
    @user_brief.user = current_user
    @user_brief.audition = @audition
    @user_brief.save
  end

  def report_brief

    @user = current_user
    @brief = Brief.find(params[:id])
    @brief.reported_status == true
    @brief.save

  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def brief_params
    params.require(:brief).permit(:title, :name, :race, :age, :gender, :ethnicty, :language, :marital_status, :profession, :hometown, :current_home, :wants, :needs, :flaws, :traits, :arc_summary, :attachment, :user_id, :age_range, :scene)
  end

end

