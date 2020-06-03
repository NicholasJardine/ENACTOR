class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def staff
  end

  def mission
  end

  def how_it
  end

end
