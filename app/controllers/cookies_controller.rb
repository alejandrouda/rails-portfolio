class CookiesController < ApplicationController
  skip_before_action :authenticate_user!
  
  def index
  end

  def consent
  end
end
