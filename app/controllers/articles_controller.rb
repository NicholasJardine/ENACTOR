class ArticlesController < ApplicationController
  def index
  end

  def show
    @user = current_user
  end

  def new
    @user = current_user
    @article = Article.new
  end

  def create
        @article = Article.create!(article_params)
   #  @production_company = ProductionCompany.find(params[:id])
   # # @brief.user = current_user
   #  @brief.production_company = @production_company
    if @article.save

      redirect_to article_path(@article)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

    private

  def article_params
    params.require(:article).permit(:title, :image, :attachment, :description)
  end

end
