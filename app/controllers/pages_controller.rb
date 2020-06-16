class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @user = current_user
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

end
