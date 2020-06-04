class BriefsController < ApplicationController

  def show
    @production_company = ProductionCompany.find(params[:production_company_id])
    @brief = Brief.find(params[:id])
  end


  def new
    @brief = Brief.new
    @production_company = ProductionCompany.where(:id == current_user.id)
  end

  def create
    @brief = Brief.new(brief_params)
    @production_company = ProductionCompany.find(params[:production_company_id])
   # @brief.user = current_user
    @brief.production_company = @production_company
    if @brief.save

      redirect_to brief_path(@production_company, @brief)
    else
      render :new
    end
  end


  def edit
  end

  def update
  end

  def delete
  end

  private

  def brief_params
    params.require(:brief).permit(:name, :age, :gender, :ethnicty, :language, :marital_status, :profession, :hometown, :current_home, :wants, :needs, :flaws, :traits, :arc_summary)
  end

end

