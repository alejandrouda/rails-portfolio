class PoliciesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index,:show ]
  def show
    @policy = Policy.find_by(url_handle: params[:url_handle])
  end
end
