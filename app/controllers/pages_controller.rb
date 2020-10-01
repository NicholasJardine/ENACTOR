class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home

    @users = User.all
    @user = current_user
    @last = Article.first
    @articles = Article.all
    @articles_without_latest = @articles.reject{|article| article == @last}


    if params[:query].present?
      sql_query = " \
        users.name @@ :query "
      @users = User.where(sql_query, query: "%#{params[:query]}%").where(occupation: "Actor")
    else
      @users = User.where(occupation: "Actor")
    end
    # @others = @articles.drop(@articles.length - 1)
  end

  def staff
        @user = current_user

  end

  def mission
      @user = current_user

  end

  def how_it
    @user = current_user

  end

  def search_actors
    @user = current_user

    if params[:query].present?
      sql_query = " \
        users.name @@ :query "
      @users = User.where(sql_query, query: "%#{params[:query]}%").where(occupation: "Actor")
    else
      @users = User.where(occupation: "Actor")
    end

  end

  def searching
    @user = current_user

    if params[:query].present?
      sql_query = " \
        users.name @@ :query "
      @users = User.where(sql_query, query: "%#{params[:query]}%").where(occupation: "Actor")
    else
      @users = User.where(occupation: "Actor")
    end

    #   if params[:query].present?
    #   sql_query = "name ILIKE :query"
    #   @users = User.where(sql_query, query: "%#{params[:query]}%")
    # else
    #   @users = User.all
    # end
  end


  def searching_companies
    @user = current_user

    if params[:query].present?
      sql_query = " \
        users.name @@ :query "
      @users = User.where(sql_query, query: "%#{params[:query]}%").where(occupation: "Production Company")
    else
      @users = User.where(occupation: "Production Company")
    end

    #   if params[:query].present?
    #   sql_query = "name ILIKE :query"
    #   @users = User.where(sql_query, query: "%#{params[:query]}%")
    # else
    #   @users = User.all
    # end
  end


  def carousel
    @user = current_user
    @articles = Article.all

  end

  def terms_and_conditions
    @user = current_user
  end

  def components
    @user = current_user
    @last = Article.first
    @articles = Article.all
    @articles_without_latest = @articles.reject{|article| article == @last}
    @users = User.all


    if params[:query].present?
      sql_query = " \
        users.name @@ :query "
      @users = User.where(sql_query, query: "%#{params[:query]}%").where(occupation: "Actor")
    else
      @users = User.where(occupation: "Actor")
    end
  end

end



