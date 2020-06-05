class BriefsController < ApplicationController

  def show
    # @production_company = ProductionCompany.find(params[:production_company_id])
    @brief = Brief.find(params[:id])
  end


  def new
    @brief = Brief.new
    # @production_company = ProductionCompany.where(:id == current_user.id)
  end

  def create
    @brief = Brief.create!(brief_params)
   #  @production_company = ProductionCompany.find(params[:id])
   # # @brief.user = current_user
   #  @brief.production_company = @production_company
    if @brief.save

      redirect_to brief_path(@brief)
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
    params.require(:brief).permit(:name, :race, :age, :gender, :ethnicty, :language, :marital_status, :profession, :hometown, :current_home, :wants, :needs, :flaws, :traits, :arc_summary, :attachment)
  end

end

