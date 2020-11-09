class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home

    @users = User.all
    @user = current_user
    @last = Article.first
    @articles = Article.all
    @articles_without_latest = @articles.reject{|article| article == @last}
    @latest = [@articles.last, @articles[-2], @articles[-3]]

    if params[:query].present?
      @stores = Store.geocoded.where("address ILIKE ?", "%#{params[:query]}%")
    else
      @stores = Store.geocoded
    end
    @markers = @stores.map do |store|
      {
        lat: store.latitude,
        lng: store.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { store: store })
        # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end

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


   def cancel
    @user=current_user
     @account_complaint = AccountComplaint.new
   end

   def complaint
     @user = current_user
     @account_complaint = AccountComplaint.new
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
    @account_complaint = AccountComplaint.new
        @latest = [@articles.last, @articles[-2], @articles[-3]]


    if params[:query].present?
      sql_query = " \
        users.name @@ :query "
      @users = User.where(sql_query, query: "%#{params[:query]}%").where(occupation: "Actor")
    else
      @users = User.where(occupation: "Actor")
    end
  end


    def linear
    @user = current_user
    @last = Article.first
    @articles = Article.all
    @articles_without_latest = @articles.reject{|article| article == @last}
    @users = User.all
    @account_complaint = AccountComplaint.new
        @latest = [@articles.last, @articles[-2], @articles[-3]]


    if params[:query].present?
      sql_query = " \
        users.name @@ :query "
      @users = User.where(sql_query, query: "%#{params[:query]}%").where(occupation: "Actor")
    else
      @users = User.where(occupation: "Actor")
    end
  end

end



