class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @packages = Package.all
    @services = Service.all
  end

end
